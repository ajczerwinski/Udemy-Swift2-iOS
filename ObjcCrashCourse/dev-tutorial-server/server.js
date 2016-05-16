var express = require('express');
var bodyParser = require('body-parser');
var app = express();

app.all('/*', function(req, res, next) {
	res.header("Access-Control-Allow-Origin", "*");
	res.header("Access-Control-Allow-Headers", "X-Requested-With", "Content-Type, Accept");
	res.header("Access-Control-Allow-Methods", "POST, GET");
	next();
});

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));

var tutorials = [
	{
		id: 1,
		title: "Android Studio Tutorial For Beginners",
		description: "Learn how to install Android Studio and then go through this tutorial to build your very first app",
		iframe: '<div class="container"><iframe class="video" src="https://www.youtube.com/embed/F-k5gwz_91o" frameborder="0" allowfullscreen></iframe></div>',
		thumbnail: "https://s3-us-west-2.amazonaws.com/devslopesvideo/androidwhite-learn.png"
	},
	{
		id: 2,
		title: "iOS App Icon Design In Photoshop",
		description: "Learn how to install Android Studio and then go through this tutorial to build your very first Android app.",
		thumbnail: "https://s3-us-west-2.amazonaws.com/devslopesvideo/androidwhite-learn.png",
		iframe: '<div class="container"><iframe class="video" src="https://www.youtube.com/embed/jpRBucuml2M" frameborder="0" allowfullscreen></iframe></div>'
	},
	{
		id: 3,
		title: "How to build an Apple TV App Tutorial for tvOS",
		description: "In this app we download popular movies from an IMDB service and implement scrolling and navigation on the Apple TV",
		thumbnail: "https://s3-us-west-2.amazonaws.com/devslopesvideo/tv-test.png",
		iframe: '<div class="container"><iframe class="video" src=https://www.youtube.com/embed/XmLdEcq-QNI" frameborder="0" allowfullscreen></iframe></div>'
	},
	{
		id: 4,
		title: "Photoshop Tutorial For Beginners How To Create a Log",
		description: "Learn how to make a professional logo in Photoshop without any design experience. This is a Photoshop tutorial for beginners that will give you all the basics",
		thumbnail: "https://s3-us-west-2.amazonaws.com/devslopesvideo/logo.png",
		iframe: '<div class="container"><iframe class="video" src=https://www.youtube.com/embed/CrKnswpftp4" frameborder="0" allowfullscreen></iframe></div>'
	}
];

var comments = [
	{
		username: "jackd942",
		comment: "This video was really cool. Any chance you could drop what you are doing and code my problem for me?"
	}
];

app.post('/comments', function(req, res) {
	var comment = req.body;
	if (comment) {
		if (comment.username && comment.comment) {
			comments.push(comment);
		} else {
			res.send("You posted invalid data");
		}
	} else {
		res.send("Your post has no body!");
	}

	console.log(comments);
	res.send("You successfully posted a comment!");

});

app.get('/tutorials', function(req, res) {
	console.log("GET from server");
	res.send(tutorials);
});

app.listen(8000);
