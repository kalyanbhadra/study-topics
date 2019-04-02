function validate() {
	var description = document.getElementById("description").value;
	if (description == '') {
		alert('Please enter a valid description.');
		return false;
	} else {
		return true;
	}
}