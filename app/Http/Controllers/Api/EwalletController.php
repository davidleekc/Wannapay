<?php

namespace App\Http\Controllers\Api;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use Illuminate\Support\Facades\DB;

class EwalletController extends ApiController
{
    public function login(Request $request)
    {
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            $user = Auth::user();
            
            return response()->json(['code'=>200, 'message'=>'Login Successful! Welcome','email'=> $request->email,'pasword'=>$request->password,'user' => $user], 200);
        } else {
            return response()->json(['code'=>422, 'message'=>'Wrong username or password, please try again'], 422);
        }
    }

    //user controller
    public function userList(Request $request)
    {
        //if(Auth::check()){
        $users = DB::table('users')->get();

        return response()->json(['code'=>200, 'message'=>'User data successfully pulled','data' => $users], 200);
        //}
        //return response()->json(['code'=>422, 'message'=>'You are not allowed to access this'], 422);
    }

    public function userGetByID($id)
    {
        $users = DB::table('users')->where('id', $id)->get();

        return response()->json(['code'=>200, 'message'=>'User data successfully pulled','data' => $users], 200);
    }

    public function userGetByNameOrEmail($name, $email)
    {
        $users = DB::table('users')->where('name', $name)->orWhere('email', $email)->get();

        return response()->json(['code'=>200, 'message'=>'User data successfully pulled','data' => $users], 200);
    }

    public function userGetByIdInBetween($idFrom, $idTo)
    {
        $users = DB::table('users')->whereBetween('id', [$idFrom, $idTo])->get();

        return response()->json(['code'=>200, 'message'=>'User data successfully pulled','data' => $users], 200);
    }


    //card controller
    public function cardList()
    {
        $cards = DB::table('cards')->get();

        return response()->json(['code'=>200, 'message'=>'Card data successfully pulled','data' => $cards], 200);
    }

    public function cardAdd(Request $request)
    {
        $request->validate([
            'bind_to_account' => 'required',
            'card_number' => 'required|min:16|max:16',
            'card_holder' => 'required',
            'expired_month' => 'required|integer|between:1,12',
            'expired_year' => 'required|integer|between:1000,3000',
            'card_type' => 'required|in:Visa,Master',
        ]);

        $post = DB::table('cards')->insert([
            'bind_to_account' => $request->bind_to_account,//ACC12345678
            'card_number' => $request->card_number, //1111-2222-3333-4444
            'card_holder' => $request->card_holder, //John Doe
            'expired_month' => $request->expired_month, //1 - 12
            'expired_year' => $request->expired_year, //2000
            'card_type' => $request->card_type, //VISA/MASTER
        ]);

        return response()->json(['code'=>200, 'message'=>'Card data successfully pulled','Pass form' => $post], 200);
    }

    public function cardGetByAccount($account)
    {
        $cards = DB::table('cards')->where('bind_to_account', $account)->get();

        return response()->json(['code'=>200, 'message'=>'Card data successfully pulled','data' => $cards], 200);
    }

    public function cardGetByID($id)
    {
        $cards = DB::table('cards')->where('id', $id)->get();

        return response()->json(['code'=>200, 'message'=>'Card data successfully pulled','data' => $cards], 200);
    }

    public function cardGetByCardNoOrName($card_number, $card_holder)
    {
        $cards = DB::table('cards')->where('card_number', $card_number)->orWhere('card_holder', $card_holder)->get();

        return response()->json(['code'=>200, 'message'=>'Card data successfully pulled','data' => $cards], 200);
    }

    public function CardGetByType($type)
    {
        if ($type == "Visa" || $type == "Master") {
            $cards = DB::table('cards')->where('card_type', $type)->get();

            return response()->json(['code'=>200, 'message'=>'Card data successfully pulled','data' => $cards], 200);
        } else {
            return response()->json(['code'=>422, 'message'=>'Invalid input, please enter "Visa" or "Master"'], 422);
        }
    }

    public function cardGetByName(Request $request)
    {
        $cards = DB::table('cards')->join('accounts', 'cards.bind_to_account', '=', 'accounts.account_no')->select("cards.*")->where('accounts.account_name', $request->account_name)->get();

        //$cards = DB::table('cards')->where('card_type', $type)->get();

        return response()->json(['code'=>200, 'message'=>'Card data successfully pulled','data' => $cards], 200);
    }

    //account controller
    public function accountList()
    {
        $accounts = DB::table('accounts')->get();

        return ['accounts' => $accounts];
    }

    public function accountAdd(Request $request)
    {
        $request->validate([
            'account_no' => 'required|min:10|max:10|unique:accounts',
            'account_name' => 'required|min:3|max:100',
            'address' => 'required',
            'description' => 'required',
            
        ]);

        $post = DB::table('accounts')->insert([
            'account_no' => $request->account_no,
            'account_name' => $request->account_name,
            'address' => $request->address,
            'description' => $request->description,
        ]);

        return response()->json(['code'=>200, 'message'=>'Account information successfully inserted','Pass form' => $post], 200);
    }

    public function accountUpdateBalance(Request $request)
    {
        $request->validate([
            'account_no' => 'required|min:10|max:10',
            'account_balance' => 'required|regex:/^\d*(\.\d{2})?$/|min:1|max:10',
            'operation' => 'required|in:add,substract',
            
        ]);
        if ($request->operation == 'add') {
            $balance = DB::table('accounts')->select('account_balance')->where('data', $request->account_no)->get();
            $balance = json_decode($balance, true);

            $balance = $balance[0]["account_balance"] + (float)$request->account_balance;

            $post = DB::table('accounts')
            ->where('account_no', $request->account_no)
            ->update(['account_balance' => $balance]);
        } elseif ($request->operation == 'substract') {
            $balance = DB::table('accounts')->select('account_balance')->where('data', $request->account_no)->get();
            $balance = json_decode($balance, true);

            if ((float)$request->account_balance > $balance[0]["account_balance"]) {
                return response()->json(['code'=>200, 'message'=>'Not enough balance'], 200);
            } else {
                $balance = $balance[0]["account_balance"] - (float)$request->account_balance;

                $post = DB::table('accounts')
                ->where('account_no', $request->account_no)
                ->update(['account_balance' => $balance]);
            }
        }
        

        return response()->json(['code'=>200, 'message'=>'Account balance successfully inserted','Pass form' => $post], 200);
    }

    public function accountVerify(Request $request)
    {
        $request->validate([
            'account_no' => 'required|min:10|max:10',
            'verify' => 'required|in:0,1',
        ]);

        $checkVerify = DB::table('accounts')->select('account_verified')->where('account_no', $request->account_no)->get();
        $checkVerify = json_decode($checkVerify, true);

        if ($checkVerify[0]["account_verified"] == 0) {
            $post = DB::table('accounts')
            ->where('account_no', $request->account_no)
            ->update(['account_verified' => $request->verify]);
        } else {
            return response()->json(['code'=>200, 'message'=>'Account already verified'], 200);
        }
        

        return response()->json(['code'=>200, 'message'=>'Account verified successfully','Pass form' => $post], 200);
    }

    public function accountGetByID($id)
    {
        $accounts = DB::table('accounts')->where('id', $id)->get();
        $accountData = json_decode($accounts, true);
        $cards = DB::table('cards')->where('bind_to_account', $accountData[0]['account_no'])->get();

        foreach ($accounts as $account) {
            $account->cards = $cards;
        }

        return response()->json(['code'=>200, 'message'=>'Account data successfully pulled','data' => $account], 200);
    }

    public function accountGetByName(Request $request)
    {
        $accounts = DB::table('accounts')->where('account_name', $request->account_name)->get();

        return response()->json(['code'=>200, 'message'=>'Account data successfully pulled','data' => $accounts], 200);
    }

    public function accountGetByAccount($account)
    {
        $accounts = DB::table('accounts')->where('account_no', $account)->get();
        $cards = DB::table('cards')->where('bind_to_account', $account)->get();

        foreach ($accounts as $account) {
            $account->cards = $cards;
        }

        return response()->json(['code'=>200, 'message'=>'Account data successfully pulled','data' => $account], 200);
    }

    public function transactionList(Request $request)
    {
        $header = $request->header('Authorization');
        //$headerPart = explode(" ", $header);
        //$decode_header = base64_decode($headerPart[1]);
        //$decode_header_part = explode(":", $decode_header);

        if ($header) {
            $transactions = DB::table('transactions')->get();
            $transaction_data = json_decode($transactions, true);
            $count = 0;

            foreach ($transactions as $transaction) {
                $transaction_form_detail = DB::table('accounts')->where('account_name', $transaction_data[$count]['transaction_from'])->get();
                $transaction->transaction_form_detail = $transaction_form_detail;

                $transaction_to_detail = DB::table('accounts')->where('account_name', $transaction_data[$count]['transaction_to'])->get();
                $transaction->transaction_to_detail = $transaction_to_detail;

                $count++;
                $data[] = $transaction;
            }

            return response()->json(['code'=>200, 'message'=>'User data successfully pulled','data' => $data], 200);
        }
        return response()->json(['code'=>422, 'message'=>'You are not allowed to access this'], 422);
    }

    public function transactionGetByID(Request $request)
    {
        $transactions = DB::table('transactions')->where('id', $request->id)->get();
        $transaction_data = json_decode($transactions, true);
        $count = 0;
        foreach ($transactions as $transaction) {
            $transaction_form_detail = DB::table('accounts')->where('account_name', $transaction_data[$count]['transaction_from'])->get();
            $transaction->transaction_form_detail = $transaction_form_detail;

            $transaction_to_detail = DB::table('accounts')->where('account_name', $transaction_data[$count]['transaction_to'])->get();
            $transaction->transaction_to_detail = $transaction_to_detail;

            $count++;
            $data[] = $transaction;
        }

        return response()->json(['code'=>200, 'message'=>'User data successfully pulled','data' => $data], 200);
    }

    public function transactionGetByRefNo(Request $request)
    {
        $transactions = DB::table('transactions')->where('transaction_ref_no', $request->ref_no)->get();
        $transaction_data = json_decode($transactions, true);
        $count = 0;
        foreach ($transactions as $transaction) {
            $transaction_form_detail = DB::table('accounts')->where('account_name', $transaction_data[$count]['transaction_from'])->get();
            $transaction->transaction_form_detail = $transaction_form_detail;

            $transaction_to_detail = DB::table('accounts')->where('account_name', $transaction_data[$count]['transaction_to'])->get();
            $transaction->transaction_to_detail = $transaction_to_detail;

            $count++;
            $data[] = $transaction;
        }

        return response()->json(['code'=>200, 'message'=>'User data successfully pulled','data' => $data], 200);
    }

    public function transactionGetByName(Request $request)
    {
        $transactions = DB::table('transactions')->where('transaction_from', $request->account_name)->orWhere('transaction_to', $request->account_name)->get();

        return response()->json(['code'=>200, 'message'=>'Account data successfully pulled','data' => $transactions], 200);
    }
}
