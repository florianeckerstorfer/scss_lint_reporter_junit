module SCSSLint
  class Reporter::JUnitReporter < Reporter
    def report_lints
      results = lints.group_by(&:filename)
      output = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

      output << "<testsuite name=\"scsslint\" failures=\"#{results.length}\">\n"
      if results.length == 0
        output << "  <testcase name=\"Empty\"/>\n"
      end
      results.each do |file_name, errors|
        output << "  <testcase name=#{file_name.encode(xml: :attr)}>\n"
        output << "    <failure message=\"#{errors.length} SCSSLint Failure\">"

        i = 1
        errors.each do |error|
          output << "#{i}. line #{error.location.line}, column #{error.location.column}-" \
            "#{error.location.length}: [#{error.severity}] #{error.linter.name if error.linter}: "\
            "#{error.description.encode(xml: :attr)}\n"
          i += 1
        end
        output << "</failure>\n"
        output << "  </testcase>\n"
      end
      output << "</testsuite>\n"

      output
    end
  end
end
