json.extract! quiz, :id, :question, :opa, :opb, :opc, :opd, :answer, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)