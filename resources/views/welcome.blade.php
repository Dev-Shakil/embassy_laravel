<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    @include('layout.head')
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body>
  <div class="flex justify-between items-center text-primary bg-white shadow-lg h-20 px-7 font-semibold text-xl">
    <div class="flex gap-3">
      <div class="border-r-2 pr-2 border-primary flex flex-col"><span>حل الملف
</span>File Solution</div>
      <div class="flex items-center">Embassy Print Format Platform</div>
    </div>
    <div>
      <button class="text-[22px]" onClick={}>Register</button>
      {{-- <Modal
        className="p-14"
        centered
        open={modalOpen}
        footer={null}
        
        width={800}
        onCancel={() => setModalOpen(false)}
      >
        <Register/>
      </Modal> --}}
    </div>
  </div>
    <div class="text-clifford bg-green-700 h-[90vh] bg-cover flex items-center px-[200px] justify-end">



        <form class="mt-3 bg-[#1AAE9B] rounded-2xl p-14  mr-14" id="loginform" action="{{ route('login') }}"
            method="post">
            <!-- Email input -->
            @csrf
            <div class=" mb-4">
                <label class="form-label text-white text-2xl font-semibold" for="form2Example1">Email address</label>
                <input type="email" id="form2Example1" placeholder="abc@gmail.com" class="form-control h-[50px]"
                    name="email" />

            </div>

            <!-- Password input -->
            <div class=" mb-4">
                <label class="form-label text-white text-2xl font-semibold" for="form2Example2">Password</label>
                <input type="password" placeholder="Enter Password" id="form2Example2" class="form-control h-[50px]"
                    name="pass" />

            </div>

            <!-- 2 column grid layout for inline styling -->
           
            <div class="row mb-4">

              <div className="flex justify-center mt-2">
                <button type="submit"
                    class="text-white text-2xl rounded-lg py-3 border-white text-center flex justify-center bg-[#04352f] px-14 hover:bg-red-800 font-semibold">Login</button>
            </div>
                
                <div class="flex container mt-2 w-full">
                  <a href="#!" class="text-white text-xl font-semibold">Forgot password?</a>
                 
                </div>
                <a href="{{ route('signup') }}">Sign UP</a>
                
            </div>

         


          
        </form> 

    </div>
    @include('layout.script')

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
    <script src="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#loginform').on('submit', function(e) {
                e.preventDefault();

                var form = $(this);
                var formData = form.serialize();

                $.ajax({
                    url: form.attr('action'),
                    method: 'POST',
                    data: formData,
                    success: function(response) {
                        Swal.fire({
                            title: response.title,
                            text: response.message,
                            icon: response.icon,

                        });
                        setTimeout(function() {
                            window.location.href = response.redirect_url;
                        }, 500);
                    },
                    error: function(xhr) {
                        Swal.fire({
                            title: response.title,
                            text: response.message,
                            icon: response.icon,

                        });
                        setTimeout(function() {
                            window.location.href = response.redirect_url;
                        }, 3000);
                    }
                });
            });
        });
    </script>
</body>

</html>
