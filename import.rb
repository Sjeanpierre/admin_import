class DataImport

  NAME_STRINGS_TO_REMOVE = %w(*RS> **** RightScript:)
  DURATION_STRINGS_TO_REMOVE = %w(Script duration:)
  DURATION_TIMESTAMP_REGEX = Regexp.new(/\d.:\d\d.\d\d./)
  SCRIPT_NAME_REGEX = Regexp.new('RightScript:')
  SCRIPT_DURATION_REGEX = Regexp.new('Script duration:')
  BEGIN_SKIP_REGEX = Regexp.new('======== redis::default : START ========')
  END_SKIP_REGEX = Regexp.new('======== redis::default : END ========')

  def initialize(data)
    @script_names = []
    @script_durations = []
    @data = data
  end

  def process
  end

end


