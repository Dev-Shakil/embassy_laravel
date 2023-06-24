<!DOCTYPE html>
<html lang="en">
<head>
    @include('layout.head')
</head>
<body>
    <div class="container">
        <form id="visainput" class="mt-5">
            @csrf
            <div class="row">
                <input type="hidden" name="" id="candidate_id" value="{{$id}}" />
                <div class="col">
                  <!-- Name input -->
                  <div class="form-outline">
                    <input type="number" id="visa_no" name="visa_no" class="form-control" />
                    <label class="form-label" for="form8Example1">Visa NO</label>
                  </div>
                </div>
                <div class="col">
                  <!-- Email input -->
                  <div class="form-outline">
                    <input type="date" id="visa_date" name="visa_date" class="form-control" />
                    <label class="form-label" for="form8Example2">Visa Date</label>
                  </div>
                </div>
                <div class="col">
                  <!-- Email input -->
                  <div class="form-outline">
                    <input type="text" id="spon_id" name="spon_id" class="form-control" />
                    <label class="form-label" for="form8Example2">Sponsor ID</label>
                  </div>
                </div>
                <div class="col">
                  <!-- Email input -->
                  <div class="form-outline">
                    <input type="text" id="spon_name_arabic" name="spon_name_arabic" class="form-control" />
                    <label class="form-label" for="form8Example2">Sponsor Name(Arabic)</label>
                  </div>
                </div>
              </div>
              
              <hr />
              
              <div class="row row-cols-2">
                <div class="col">
                    <!-- Name input -->
                    <div class="form-outline">
                      <input type="text" id="salary" name="salary" class="form-control" />
                      <label class="form-label" for="form8Example2">Salary</label>
                    </div>
                  </div>
                <div class="col">
                  <!-- Name input -->
                  <div class="form-outline">
                    <input type="text" id="spon_name_english" name="spon_name_english" class="form-control" />
                    <label class="form-label" for="form8Example2">Sponsor Name(english)</label>
                  </div>
                </div>
                <div class="col">
                  <!-- Name input -->
                  <div class="form-outline">
                    <input type="text" id="prof_name_arabic" name="prof_name_arabic" class="form-control" />
                    <label class="form-label" for="form8Example2">Profession Name(Arabic)</label>
                  </div>
                </div>
                <div class="col">
                  <!-- Name input -->
                  <div class="form-outline">
                    <input type="text" id="prof_name_english" name="prof_name_english" class="form-control" />
                    <label class="form-label" for="form8Example2">Profession Name(english)</label>
                  </div>
                </div>
                <div class="col">
                  <!-- Name input -->
                  <div class="form-outline">
                    <input type="text" id="mofa_no" name="mofa_no" class="form-control" />
                    <label class="form-label" for="form8Example2">MOFA No</label>
                  </div>
                </div>
                <div class="col">
                  <!-- Name input -->
                  <div class="form-outline">
                    <input type="date" id="mofa_date" name="mofa_date" class="form-control" />
                    <label class="form-label" for="form8Example2">MOFA Date</label>
                  </div>
                </div>
                <div class="col">
                  <!-- Name input -->
                  <div class="form-outline">
                    <input type="text" id="okala_no" name="okala_no" class="form-control" />
                    <label class="form-label" for="form8Example2">Okala No</label>
                  </div>
                </div>
                <div class="col">
                  <!-- Name input -->
                  <div class="form-outline">
                    <input type="text" id="musaned_no" name="musaned_no" class="form-control" />
                    <label class="form-label" for="form8Example2">Musaned No</label>
                  </div>
                </div>
                <br />
                
            </div>
            <div class="form-outline text-center">
                <button type="submit" class="btn btn-primary btn-block mb-3">Save</button>
            </div>
        </form>
    </div>

    @include('layout.script')
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#visainput').submit(function(e) {
                e.preventDefault(); // Prevent the default form submission

                var formData = $(this).serialize(); // Serialize the form data
                console.log(formData);
                var id = (document.getElementById('candidate_id').value);
                $.ajax({
                    url: "{{ url('user/visaadd') }}/" + id,
                    type: "POST",
                    data: formData,
                    success: function(response) {
                        // Handle the response from the server
                        console.log(response);
                        // Perform any necessary actions or show success message
                    },
                    error: function(xhr, textStatus, errorThrown) {
                        // Handle any errors that occurred during the AJAX request
                        console.log(xhr.responseText);
                    }
                });
            });
        });
    </script>
</body>
</html>