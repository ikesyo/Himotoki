desc 'Run xcodebuild'
task :build, [:action, :scheme, :sdk, :destination] do |_, args|
  cmd = %W(
    xcodebuild #{args.action}
    -scheme "#{args.scheme}"
    -sdk #{args.sdk}
    -destination "#{args.destination}"
    -configuration Release
    ENABLE_TESTABILITY=YES
    GCC_GENERATE_DEBUGGING_SYMBOLS=NO
  )

  sh "set -eu -o pipefail && env NSUnbufferedIO=YES #{cmd.join(' ')} | xcpretty"
end
