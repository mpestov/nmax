# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Run nmax', type: 'aruba' do
  let(:nmax) { "#{Dir.pwd}/bin/nmax" }
  let(:files_dir) { "#{Dir.pwd}/spec/files" }

  context 'with help option' do
    it 'returns help message' do
      expect(
        run("#{nmax} -h")
      ).to have_output include_output_string 'Usage: INPUT | bin/nmax n'
    end
  end

  context 'with empty file' do
    it 'returns nothing' do
      expect(
        run("bash -c 'cat #{files_dir}/empty.txt | #{nmax}'")
      ).to have_output ''
    end
  end

  context 'with mixed content file' do
    it 'returns all digits from file sorted by descending' do
      expect(
        run("bash -c 'cat #{files_dir}/mixed_content.txt | #{nmax}'")
      ).to have_output '1234567890 4 1'
    end
  end

  context 'with n = 2' do
    it 'returns only 2 biggest digits' do
      expect(
        run("bash -c 'cat #{files_dir}/mixed_content.txt | #{nmax} 2'")
      ).to have_output '1234567890 4'
    end
  end

  context 'with n = 0' do
    it 'returns nothing' do
      expect(
        run("bash -c 'cat #{files_dir}/mixed_content.txt | #{nmax} 0'")
      ).to have_output ''
    end
  end
end
