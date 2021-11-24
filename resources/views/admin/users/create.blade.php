@extends('admin.modal')

@section('content')
<div class="page-body">
    <div class="container-fluid">        
      <div class="page-title">
        <div class="row">
          <div class="col-6">
            <h3>Users</h3>
          </div>
          <div class="col-6">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.html"><i data-feather="home"></i></a></li>
              <li class="breadcrumb-item">Dashboard</li>
              <li class="breadcrumb-item active">User</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
    <!-- Container-fluid starts-->
    <div class="container-fluid">
        <div class="row second-chart-list third-news-update">
            <div class="container">
                <div class="justify-content-center">
                    @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <strong>Opps!</strong> Something went wrong, please check below errors.<br><br>
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    <div class="card">
                        <div class="card-header">
                            <h5>Create User</h5>
                            <div class="card-header-right">
                                <span>
                                    <a class="btn btn-primary" href="{{ route('admin_users.index') }}">Users</a>
                                </span>
                            </div>
                        </div>

                        <div class="card-body">
                            {!! Form::open(array('route' => 'admin_users.store', 'class' => 'form theme-form' , 'method'=>'POST')) !!}                              
                                <div class="row">
                                    <div class="col">
                                        <div class="mb-3">
                                            <label class="form-label"><strong>Name:</strong></label>
                                            {!! Form::text('name', null, array('placeholder' => 'Name','class' => 'form-control input-air-primary')) !!}
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="mb-3">
                                            <label class="form-label"><strong>Email:</strong></label>
                                            {!! Form::text('email', null, array('placeholder' => 'Email','class' => 'form-control input-air-primary')) !!}
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="mb-3">
                                            <label class="form-label"><strong>Password:</strong></label>
                                            {!! Form::password('password', array('placeholder' => 'Password','class' => 'form-control input-air-primary')) !!}
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="mb-3">
                                            <label class="form-label"><strong>Confirm Password:</strong></label>
                                            {!! Form::password('password_confirmation', array('placeholder' => 'Confirm Password','class' => 'form-control input-air-primary')) !!}
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="mb-3">
                                            <label class="form-label"><strong>Role:</strong></label>
                                            {!! Form::select('roles[]', $roles,[], array('class' => 'form-control input-air-primary','multiple')) !!}
                                        </div>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            {!! Form::close() !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Container-fluid Ends-->
</div>


@endsection