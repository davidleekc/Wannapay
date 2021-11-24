<?php

use Illuminate\Http\Request;
use LaravelApi\Facade as Api;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});

Route::group(['namespace' => 'Api'], function () {
    Api::post('login', 'EwalletController@login')
        ->addBodyParameter('loginForm', 'Enter user login inforamtion')
        ->setSummary('User login')
        ->setDescription('this url require user to enter their login information')
        ->addTag('E-Wallet')
        ->setOperationId('executeUserLogin')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');

    Route::group(['prefix' => 'user',], function () {
        //LIST
        Api::get('', 'EwalletController@userList')
        ->setSummary('All user list')
        ->setDescription('this url provide all of the user data')
        ->addTag('User')
        ->setOperationId('executeUserList')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');

        //Get user by ID
        Api::post('/{id}', 'EwalletController@userGetByID')
        ->addPathParameter('id', function ($param) {
            $param->setDescription('Enter User ID');
        })
        ->setSummary('Show specific user data by sending 1 parameter (id)')
        ->setDescription('By sending the user id as input, the user data that is related to the id will display')
        ->addTag('User')
        ->setOperationId('executeUserGet')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');

        //Get user by name or email
        Api::post('/{name}/{email}', 'EwalletController@userGetByNameOrEmail')
        ->addPathParameter('name', function ($param) {
            $param->setDescription('Enter User Name');
        })
        ->addPathParameter('email', function ($param) {
            $param->setDescription('Enter User Email');
        })
        ->setSummary('Show specific user data by sending 1 or 2 parameter (name / email)')
        ->setDescription('By sending the user name or email as input, the user data that is related to the id will display')
        ->addTag('User')
        ->setOperationId('executeUserGetBy2Param')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');

        //Get user by id in between
        Api::post('/between/{idFrom}/{idTo}', 'EwalletController@userGetByIdInBetween')
        ->addPathParameter('idFrom', function ($param) {
            $param->setDescription('Enter min id');
        })
        ->addPathParameter('idTo', function ($param) {
            $param->setDescription('Enter max id');
        })
        ->setSummary('Show specific user data by sending min and max parameter (id)')
        ->setDescription('By sending the user min id and max id as input, the user data that is related to the id will display')
        ->addTag('User')
        ->setOperationId('executeUserGetByBetween2Param')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');
    });
    
    Route::group(['prefix' => 'card',], function () {
        //Get card List
        Api::get('', 'EwalletController@cardList')
        ->setSummary('All card list')
        ->setDescription('this url provide all of the credit card data')
        ->addTag('Card')
        ->setOperationId('executeCardList')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');

        Api::post('/add', 'EwalletController@cardAdd')
        ->addBodyParameter('addCard', 'Post card in a form')
        ->setSummary('Able to add card')
        ->setDescription('Submit new card')
        ->addTag('Card')
        ->setOperationId('executeCardPost')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');

        //Get card by id or account
        Api::post('/{id}', 'EwalletController@cardGetByID')
        ->addPathParameter('id', function ($param) {
            $param->setDescription('Enter Card ID');
        })
        ->setSummary('Get card by provide ID')
        ->setDescription('this url provide the credit card data by enter the id')
        ->addTag('Card')
        ->setOperationId('executeCardID')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');

        //get card by number or holder
        Api::post('/{number}/{holder}', 'EwalletController@cardGetByCardNoOrName')
        ->addPathParameter('number', function ($param) {
            $param->setDescription('Enter card number');
        })
        ->addPathParameter('holder', function ($param) {
            $param->setDescription('Enter card holder');
        })
        ->setSummary('Get card by provide card number or hard holder')
        ->setDescription('this url provide credit card data by enter card number or card holder')
        ->addTag('Card')
        ->setOperationId('executeCardNumberOrName')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');

        //get card by type
        Api::post('/type/{type}', 'EwalletController@CardGetByType')
        ->addPathParameter('type', function ($param) {
            $param->setDescription('Enter card type (Visa/ Master)');
        })
        ->setSummary('All card list filtered by type')
        ->setDescription('this url provide specific credit card data by type')
        ->addTag('Card')
        ->setOperationId('executeCardType')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');
    });

    Route::group(['prefix' => 'account',], function () {
        Api::get('', 'EwalletController@accountList')
        ->setSummary('All account list')
        ->setDescription('this url provide all of the account data ')
        ->addTag('Account')
        ->setOperationId('executeAccountList')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');

        Api::post('/add', 'EwalletController@accountAdd')
        ->addBodyParameter('addAccount', 'Post account in a form')
        ->setSummary('Able to add new account')
        ->setDescription('Submit new account information')
        ->addTag('Account')
        ->setOperationId('executeAccountPost')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');

        Api::post('/balance', 'EwalletController@accountUpdateBalance')
        ->addBodyParameter('editBalance', 'Provide balance in a form')
        ->setSummary('Able to update account balance')
        ->setDescription('Submit new account balance')
        ->addTag('Account')
        ->setOperationId('executeAccountPostBalance')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');

        Api::post('/verify', 'EwalletController@accountVerify')
        ->addBodyParameter('editVerify', 'verify account')
        ->setSummary('Able to update account verification')
        ->setDescription('Submit new account verification')
        ->addTag('Account')
        ->setOperationId('executeAccountPostVerification')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');

        Api::post('/{id}', 'EwalletController@accountGetByID')
        ->addPathParameter('id', function ($param) {
            $param->setDescription('Enter Account ID');
        })
        ->setSummary('Get account data by ID')
        ->setDescription('this url provide the account data by provide id')
        ->addTag('Account')
        ->setOperationId('executeAccountID')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');

        Api::post('/{account}/cards', 'EwalletController@accountGetByAccount')
        ->addPathParameter('account', function ($param) {
            $param->setDescription('Enter account that bind with the cards');
        })
        ->setSummary('Get account data by provide account no')
        ->setDescription('this url provide the account data by provide account number')
        ->addTag('Account')
        ->setOperationId('executeAccountACC')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');
    });

    Route::group(['prefix' => 'transaction',], function () {
        Api::get('', 'EwalletController@transactionList')
        ->requiresAuth('login', [ 'read' ])
        ->setSummary('All transaction list')
        ->setDescription('this url provide all of the transaction information')
        ->addTag('Transaction')
        ->setOperationId('executeTransactionList')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');

        Api::post('/{id}', 'EwalletController@transactionGetByID')
        ->addPathParameter('id', function ($param) {
            $param->setDescription('Enter transaction ID');
        })
        ->setSummary('Get transaction data by provide transaction id')
        ->setDescription('this url provide the transaction data by provide id')
        ->addTag('Transaction')
        ->setOperationId('executeTransactionID')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');

        Api::post('/ref/{ref_no}', 'EwalletController@transactionGetByRefNo')
        ->addPathParameter('ref_no', function ($param) {
            $param->setDescription('Enter transaction ID');
        })
        ->setSummary('Get transaction data by provide transaction ref no')
        ->setDescription('this url provide the transaction data by provide ref no')
        ->addTag('Transaction')
        ->setOperationId('executeTransactionRefNo')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');
    });

    Route::group(['prefix' => 'general',], function () {
        Api::post('/accounts', 'EwalletController@accountGetByName')
        ->addBodyParameter('accountName', 'display account by name')
        ->setSummary('The detail of user account')
        ->setDescription('Show the user account detail')
        ->addTag('General User')
        ->setOperationId('executeGuestAccountDetail')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');

        Api::post('/transactions', 'EwalletController@transactionGetByName')
        ->addBodyParameter('transactionName', 'display transaction by name')
        ->setSummary('Get transaction data by provide user name')
        ->setDescription('this url provide the transaction data by provide user name')
        ->addTag('General User')
        ->setOperationId('executeGuestTransactionList')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');

        Api::post('/cards', 'EwalletController@cardGetByName')
        ->addBodyParameter('cardName', 'display card by name')
        ->setSummary('Get card data by provide user name')
        ->setDescription('this url provide the card data by provide user name')
        ->addTag('General User')
        ->setOperationId('executeGuestCardList')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');
    });

    Route::group(['prefix' => 'manager',], function () {
        Api::get('', 'EwalletController@transactionList')
        ->requiresAuth('login', [ 'read' ])
        ->setSummary('All transaction list')
        ->setDescription('this url provide all of the transaction information')
        ->addTag('Manager')
        ->setOperationId('executeGuestList')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');

        Api::post('/{id}', 'EwalletController@transactionGetByID')
        ->addPathParameter('id', function ($param) {
            $param->setDescription('Enter transaction ID');
        })
        ->setSummary('Get transaction data by provide transaction id')
        ->setDescription('this url provide the transaction data by provide id')
        ->addTag('Manager')
        ->setOperationId('executeGuestID')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');

        Api::post('/ref/{ref_no}', 'EwalletController@transactionGetByRefNo')
        ->addPathParameter('ref_no', function ($param) {
            $param->setDescription('Enter transaction ID');
        })
        ->setSummary('Get transaction data by provide transaction ref no')
        ->setDescription('this url provide the transaction data by provide ref no')
        ->addTag('Manager')
        ->setOperationId('executeGuestRefNo')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');
    });

    Route::group(['prefix' => 'admin',], function () {
        Api::post('/account', 'EwalletController@accountList')
        ->setSummary('All account list')
        ->setDescription('this url provide all of the account information')
        ->addTag('Admin')
        ->setOperationId('executeAdminAccountList')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');

        Api::post('/card', 'EwalletController@cardList')
        ->setSummary('All card list')
        ->setDescription('this url provide all of the card information')
        ->addTag('Admin')
        ->setOperationId('executeAdminCardList')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');

        Api::post('/transaction', 'EwalletController@transactionList')
        ->setSummary('All transaction list')
        ->setDescription('this url provide all of the transaction information')
        ->addTag('Admin')
        ->setOperationId('executeAdminTransactionList')
        ->setConsumes(['application/json'])
        ->setProduces(['application/json'])
        ->addResponse(200, 'Successful operation')
        ->addResponse(422, 'Validation error');
    });

    Api::basicAuthSecurity('login');
});
