class UserMailer < ActionMailer::Base
  #default :from => "gestortesis@uniandes.edu.co"
  def notificar_compromiso(estudiante, compromiso)
    @estudiante = estudiante
    @compromiso = compromiso
    mail(:to => estudiante.correoElectronico + "@uniandes.edu.co", :subject => "Compromiso asignado", :from => "gestortesis@uniandes.edu.co")
  end

  def cancelar_compromiso(estudiante, compromiso)
    @estudiante = estudiante
    @compromiso = compromiso
    mail(:to => estudiante.correoElectronico + "@uniandes.edu.co", :subject => "Compromiso cancelado", :from => "gestortesis@uniandes.edu.co")
  end

  def actualizar_compromiso(estudiante, compromisoAnt, compromisoNvo)
      @estudiante = estudiante
      @compromisoAnt = compromisoAnt
      @compromisoNvo = compromisoNvo
      
      mail(:to => estudiante.correoElectronico + "@uniandes.edu.co", :subject => "Compromiso actualizado", :from => "gestortesis@uniandes.edu.co")
  end

  def notificar_reunion(asistente, reunion)
    @asistente = asistente
    @reunion = reunion
    mail(:to => asistente[:correo], :subject => "Reunión programada", :from => "gestortesis@uniandes.edu.co")
  end

  def cancelar_reunion(asistente, reunion)
    @asistente = asistente
    @reunion = reunion
    mail(:to => asistente[:correo] , :subject => "Reunión cancelada", :from => "gestortesis@uniandes.edu.co")
  end

end
