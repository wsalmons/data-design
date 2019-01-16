<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Use Case</title>
	</head>
	<body>
		<h1>Use Case</h1>
		<p><b>Title:</b> Posting on Flickr</p>
		<p><b>Description:</b> Auden posts an uploaded picture from his computer to his Flickr.com account</p>
		<p><b>Name of User and their Role</b> Auden Ignatious, posting image to Flickr.com</p>
		<p><b>Usage Preconditions:</b> Auden needs a computer with stored file to upload, an internet connection, a Flickr account.</p>
		<p><b>Usage Postconditions:</b> Auden successfully posts his image to his Flickr account.</p>
		<hr>
		<h3>Interaction Flow</h3>
		<ul>
			<li>Auden enters Flickr.com into his web browser</li>
			<li>The server receives his computers request, and displays Audens home page.</li>
			<li>Auden is already logged into his Flikr.com account, indicated by his profile picture displayed in the top right of the page.</li>
			<li>Auden clicks the cloud/arrow icon in the top right to begin the process of uploading his file, which results a new page.</li>
			<li>Auden clicks on the blue "Choose photos and videos to upload" button on the resulting page, which results a system window. </li>
			<li>Auden navigates with his system window, and selects the file he would like to upload.</li>
			<li>A new page is loaded, displaying a thumbnail of his new file.</li>
			<li>Auden selects an album to upload the file to by selcting "add to albums" and searching in the resulting search bar for the intended album and selecting it.</li>
			<li>Auden adds his files to various groups buy selecting the button "Add to groups" and searching for and selecting the intended groups</li>
			<li>Auden selects the "Upload 1 Photo" button, resulting in a popup box asking confirmation.</li>
			<li>Auden selects the "Upload" button.</li>
			<li>A new page is loaded with the uploaded image displayed on it.</li>
		</ul>
		<h3><b>Frequency of Use:</b> 3-5 times a week.</h3>
		<hr>
		<h1>Conceptual Model</h1>
		<h3>User</h3>
		<ul>
			<li>user</li>
			<li>userId</li>
			<li>userEmail</li>
			<li>userName</li>
			<li>userPassword</li>
		</ul>
		<h3>Photo</h3>
		<ul>
			<li>photo</li>
			<li>photoId</li>
			<li>photoIdUserID</li>
			<li>photoUrl</li>
			<li>photoSize</li>
			<li>photoCameraMetadata</li>
			</ul>

	</body>
</html>