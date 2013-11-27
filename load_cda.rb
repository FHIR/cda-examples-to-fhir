system('rm -rf cda')
system('mkdir cda')
{
'ALLERGIES AND ADVERSE REACTIONS' => [
  'http://raw.github.com/aswain/AnnotatedExamples/XML-Examples/Domain_Allergies_XMLExamples.xml'
  ],
  'PROBLEMS' => [
    'https://raw.github.com/donaldson-ed/taskforceExample/master/noKnownProblems.xml'
  ],
  'IMMUNIZATIONS' => [
    'https://raw.github.com/brettmarquard/HL7-C-CDA-Task-Force-Examples/master/Unknown_Immunization_Status.xml'
  ],
  'MEDICATIONS' => [
    'https://raw.github.com/aswain/AnnotatedExamples/XML-Examples/Domain_Medications_XMLExamples.xml'
  ],
  'RESULTS' => [
    'https://raw.github.com/jddamore/HL7-Task-Force-Examples/master/RESULT_Value_Less_Than_Physical_Quantity.xml',
    'https://raw.github.com/jddamore/HL7-Task-Force-Examples/master/RESULT_Panel_with_Two_Ordinal_Values.xml',
    'https://raw.github.com/jddamore/HL7-Task-Force-Examples/master/RESULT_Use_of_String_Value.xml'
  ]
}.each do |section, paths|
  dir = section.gsub(' ','_').downcase
  system("mkdir cda/#{dir}")
  system("mkdir fhir/#{dir}")
  paths.each do |pth|
    system("cd cda/#{dir} && wget #{pth}")
    fhile_name = File.basename(pth)
    fhile_path = "fhir/#{dir}/#{fhile_name}"

    unless File.exists?(fhile_path)
     system("echo '<TODO>' >> #{fhile_path}")
    end
  end
end
