const photos = [
    { url: siteUrl + "/assets/images/wolves/1.jpg", source: "https://www.flickr.com/photos/tambako/32683132561/in/photostream/", width: "80%" },
    { url: siteUrl + "/assets/images/wolves/2.jpg", source: "https://www.flickr.com/photos/tambako/53444913294/", width: "80%" },
    { url: siteUrl + "/assets/images/wolves/3.jpg", source: "https://www.flickr.com/photos/tambako/52617383930/", width: "80%" },
    { url: siteUrl + "/assets/images/wolves/4.jpg", source: "https://www.flickr.com/photos/tambako/51334530523/", width: "80%" }
];

function getRandomPhoto() {
    return photos[Math.floor(Math.random() * photos.length)];
}

function displayPhoto() {
    const container = document.getElementById("random-wolf");
    if (!container) return;

    const photo = getRandomPhoto();

    console.log("Selected Photo:", photo.url);
    console.log("Source:", photo.source ? photo.source : "No source available");

    let imgElement = `<img src="${photo.url}" alt="Random Photo" style="width: ${photo.width}; height: auto;">`;

    container.innerHTML = photo.source 
        ? `<a href="${photo.source}" target="_blank">${imgElement}</a>` 
        : imgElement;
}

window.onload = displayPhoto;