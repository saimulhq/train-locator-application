const tableBody = document.querySelector("#train-location-data > tbody");

function loadTrainData() {
	const request = new XMLHttpRequest();

	request.open("get", "http://localhost:3000/trains");

	request.onload = () => {
		try {
			const jsonResponse = JSON.parse(request.responseText);
			populateTable(jsonResponse);
		} catch(e) {
			console.warn("Couldn't load data");
		}
	};

	request.send();
}

function populateTable(jsonResponse) {
	while(tableBody.firstChild){
		tableBody.removeChild(tableBody.firstChild);
	}

	jsonResponse.forEach((obj) => {
		const tr = document.createElement('tr');

		for (var key in obj) {
			const td = document.createElement('td');
			td.textContent = obj[key];
			tr.appendChild(td);
		}

		tableBody.appendChild(tr);
	});
}

setInterval(() => {
	loadTrainData(); 
}, 1000);