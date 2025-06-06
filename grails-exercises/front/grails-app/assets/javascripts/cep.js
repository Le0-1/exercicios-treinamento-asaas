const isValidCep = (cep) => /^\d{5}-?\d{3}$/.test(cep);

const clearForm = () => {
	document.getElementById("logradouro").value = "";
	document.getElementById("cidade").value = "";
	document.getElementById("estado").value = "";
	document.getElementById("bairro").value = "";
};

const showCepError = (msg) => {
	document.getElementById("cep-error").textContent = msg;
};

const fillAddressForm = (address) => {
	document.getElementById("logradouro").value = address.logradouro || "";
	document.getElementById("cidade").value = address.localidade || "";
	document.getElementById("estado").value = address.uf || "";
	document.getElementById("bairro").value = address.bairro || "";
};

const fetchCep = async () => {
	clearForm();
	showCepError("");

	let cepInput = document.getElementById("cep").value.replace(/\D/g, "");
	if (!cepInput) return;

	if (!isValidCep(cepInput)) {
		showCepError("CEP inválido. Use o formato 99999-999 ou 99999999.");
		return;
	}

	try {
		const url = `https://viacep.com.br/ws/${cepInput}/json/`;
		const data = await fetch(url);
		const address = await data.json();

		if (address.hasOwnProperty("erro")) {
			showCepError("CEP não encontrado.");
		} else {
			fillAddressForm(address);
		}
	} catch (e) {
		showCepError("Erro ao buscar o CEP.");
	}
};

document.addEventListener("DOMContentLoaded", () => {
	document.getElementById("cep").addEventListener("focusout", fetchCep);
});
