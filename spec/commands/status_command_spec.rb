require 'spec_helper'

module VagrantPlugins::Proxmox
  describe 'Vagrant Proxmox provider status command', :need_box do
    let(:environment) { Vagrant::Environment.new vagrantfile_name: 'dummy_box/Vagrantfile' }
    let(:ui) { double('ui').as_null_object }

    specify do
      expect(Action::ConnectProxmox).to be_called
      expect(Action::ReadState).to be_called { |env| env[:machine_state_id] = :stopped }
      expect(ui).to(receive(:info).with(/stopped \(proxmox\)/, anything)))
      execute_vagrant_command environment, :status
    end
  end
end
