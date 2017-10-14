class CreateJoinTableDoctorAndPatient < ActiveRecord::Migration
  def change
    create_join_table :doctors, :patients,table_name: :appointments do |t|
      # t.index [:doctor_id, :patient_id]
      # t.index [:patient_id, :doctor_id]
    end
  end
end
