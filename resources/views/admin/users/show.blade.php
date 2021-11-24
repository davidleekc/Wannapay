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
                    @if (\Session::has('success'))
                        <div class="alert alert-success">
                            <p>{{ \Session::get('success') }}</p>
                        </div>
                    @endif
                    <div class="card">
                        <div class="card-header">
                            @can('role-create')
                                <span class="float-right">
                                    <a class="btn btn-primary" href="{{ route('admin_users.index') }}">Back</a>
                                </span>
                            @endcan
                        </div>
                        <div class="card-body">
                            <div class="lead">
                                <strong>Name:</strong>
                                {{ $user->name }}
                            </div>
                            <div class="lead">
                                <strong>Email:</strong>
                                {{ $user->email }}
                            </div>
                            <div class="lead">
                                <strong>Password:</strong>
                                ********
                            </div>
                        </div>
                    </div>
                    
                    
                </div>
            </div>      
        </div>
    </div>
    <!-- Container-fluid Ends-->
</div>

@endsection