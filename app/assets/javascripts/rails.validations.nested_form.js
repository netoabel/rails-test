ClientSideValidations.formBuilders['NestedForm::Builder'] = ClientSideValidations.formBuilders['ActionView::Helpers::FormBuilder'];

$(document).on('nested:fieldAdded', function(event) {
  $(event.target).find(':input').enableClientSideValidations();
});