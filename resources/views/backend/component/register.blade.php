<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Admin Page</title>

    <link rel="icon" type="image/x-icon" href="{{asset('backend/img/favicon.png')}}">

    <!-- Custom fonts for this template-->
    <link href="{{asset('backend/vendor/fontawesome-free/css/all.min.css')}}" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="{{asset('backend/css/sb-admin-2.css')}}" rel="stylesheet">

</head>

<body class="bg-gradient-danger">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="card o-hidden border-0 shadow-sm my-5">
                    <div class="card-body p-5">
                        @include('backend.component.success')
                        @include('backend.component.error')

                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">
                                Rental Mobil
                            </h1 </div>

                            <form class="user" action="{{route('register.create')}}" method="POST">
                                @csrf
                                <div class="form-group">
                                    <label>Username</label>
                                    <input type="text" class="form-control" name="username" required="" autofocus="" autocomplete="false">
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" class="form-control" name="password" required="" autocomplete="false">
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label>NIK</label>
                                            <input type="text" name="nik" id="" class="form-control border-dark-50" required="">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label>Nama</label>
                                            <input type="text" name="name" id="" class="form-control border-dark-50" required="">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label>Alamat</label>
                                            <input type="text" name="address" id="" class="form-control border-dark-50" required="">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label>Jenis Kelamin</label>
                                            <select name="sex" class="form-control">
                                                <option value="laki-laki">Laki-Laki</option>
                                                <option value="perempuan">Perempuan</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label>No Telp</label>
                                            <input type="text" name="phone_number" id="" class="form-control border-dark-50" required="">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="email" name="email" id="" class="form-control border-dark-50" required="">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <div class="form-gorup">
                                            <button type="submit" class="btn btn-primary shadow-sm">Simpan</button>
                                            <a class="btn btn-light shadow-sm" href="{{route('login')}}">Batal</a>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="{{asset('backend/vendor/jquery/jquery.min.js')}}" type="text/javascript"></script>
        <script src="{{asset('backend/vendor/bootstrap/js/bootstrap.bundle.min.js')}}" type="text/javascript"></script>

        <!-- Core plugin JavaScript-->
        <script src="{{asset('backend/vendor/jquery-easing/jquery.easing.min.js')}} type=" text/javascript""></script>

        <!-- Custom scripts for all pages-->
        <script src="{{asset('backend/js/sb-admin-2.min.js')}} type=" text/javascript""></script>

</body>

</html>