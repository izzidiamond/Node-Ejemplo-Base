$(function () {
    onSubmitUpdateUserForm();
});

function onSubmitUpdateUserForm() {
    $('#updateForm').on('submit', function (event) {
        event.preventDefault();

        const formData = {
            nombre: $('#name').val(),
            apellido: $('#lastname').val(),
            email: $('#email').val()
        };

        $.ajax({
            type: 'PATCH',
            url: '/updateUser',
            data: JSON.stringify(formData),
            contentType: 'application/json'
        })
        .done(function (response) {
            if (response.messaje === 'ok') {
                alert('Usuario actualizado con éxito.');
            }
        })
        .fail(function (jqXHR) {
            if (jqXHR.status === 404) {
                alert('ID de usuario no encontrado.');
            }
        })
        .always(function () {
            // Código que siempre se ejecutará después de la solicitud,
            // independientemente del resultado
        });
    });
}
