const photos = [
    { url: window.location.origin + "/assets/images/wolves/1.jpg", source: "https://www.flickr.com/photos/tambako/32683132561/in/photostream/" },
    { url: window.location.origin + "/assets/images/wolves/2.jpg", source: "https://www.flickr.com/photos/tambako/53444913294/" },
    { url: window.location.origin + "/assets/images/wolves/3.jpg", source: "https://www.flickr.com/photos/tambako/52617383930/" },
    { url: window.location.origin + "/assets/images/wolves/4.jpg", source: "https://www.flickr.com/photos/tambako/51334530523/" },
    { url: window.location.origin + "/assets/images/wolves/5.jpg", source: "https://www.flickr.com/photos/33925611@N08/3399640892/" },
    { url: window.location.origin + "/assets/images/wolves/6.jpg", source: "https://4travel.jp/travelogue/11804723" },
    { url: window.location.origin + "/assets/images/wolves/7.jpg", source: "https://www.flickr.com/photos/layout_nu/6730828759/" },
    { url: window.location.origin + "/assets/images/wolves/8.jpg" },
    { url: window.location.origin + "/assets/images/wolves/9.jpg", source: "https://www.flickr.com/photos/tambako/8700132926" },
    { url: window.location.origin + "/assets/images/wolves/10.jpg", source: "https://www.flickr.com/photos/kamia_the_wolf/329355648/" }
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

    let imgElement = `<img src="${photo.url}" alt="Random Wolf">`;

    container.innerHTML = photo.source 
        ? `<a href="${photo.source}" target="_blank">${imgElement}</a>` 
        : imgElement;
}

window.onload = displayPhoto;