module ApplicationHelper

  def hestado(v)
    if v
      "ACTIVO"
    else
      "INACTIVO"
    end
  end

end
