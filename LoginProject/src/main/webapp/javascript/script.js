function validateForm() {
      var username = document.getElementById('username');
      var email = document.getElementById('email');
      var password = document.getElementById('password');
      var confirmPassword = document.getElementById('confirmPassword');
      var agreeTerms = document.getElementById('agreeTerms');

      // Simple email format validation
      var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      var isValidEmail = emailRegex.test(email.value);

      if (username.value === '' || email.value === '' || password.value === '' || confirmPassword.value=== '' || !agreeTerms.checked) {
        showError('All fields are required.');
      } else if (!isValidEmail) {
        showError('Invalid email format.');
      } else if (password.value !== confirmPassword.value) {
        showError('Passwords do not match.');
      } else {
		showSuccess();
        // Add your logic to submit the form or redirect to another page
      }
    }
	

  function showSuccess() {
    var errorMessage = document.getElementById('errorMessage');
    errorMessage.textContent = '';


    showModal();
    // You can replace this with a modal or custom notification
    
   
  }
	
    function showError(message) {
      var errorMessage = document.getElementById('errorMessage');
      errorMessage.textContent = message;
    }

    
    
    function login() {
      showModal();
    }

    function showModal() {
      document.getElementById('myModal').style.display = 'flex';
    }

    function hideModal() {
      document.getElementById('myModal').style.display = 'none';
    }