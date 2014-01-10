class Scout::Realtime::Cpu < Scout::Realtime::Metric
  include Scout::Realtime::Aggregator

  FIELDS = { :user                  => { 'units' => '%', 'precision' => 1 },
             :system                => { 'units' => '%', 'precision' => 1 },
             :idle                  => { 'units' => '%', 'precision' => 1 },
             :io_wait               => { 'units' => '%', 'precision' => 1, 'label' => 'IO Wait' },
             :steal                 => { 'units' => '%', 'precision' => 1 },
             :interrupts            => { 'units' => '/sec', 'precision' => 1 },
             :procs_running         => { 'units' => '', 'precision' => 0 },
             :procs_blocked         => { 'units' => '', 'precision' => 0 },
             :last_minute           => { 'units' => '', 'precision' => 2 },
             :last_five_minutes     => { 'units' => '', 'precision' => 2 },
             :last_fifteen_minutes  => { 'units' => '', 'precision' => 2 } 
          }

  def initialize
    @collector = ServerMetrics::Cpu.new()
    super
  end
end
