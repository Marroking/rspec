require "spec_helper"

describe Materia do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "Verificar que la materia se llama Matematicas" do
  	materia = Materia.new(nombre: "Matematicas")
  	materia.save
  end
end
