# encoding: utf-8

module Ione
  def self.byte_buffer_class=(klass)
    @byte_buffer_class = klass
  end

  def self.new_buffer(*args)
    @byte_buffer_class.new(*args)
  end
end

require 'ione/future'
require 'ione/byte_buffer'
require 'ione/io'

begin
  require 'byte_buffer'
  Ione.byte_buffer_class = ByteBuffer::Buffer
rescue LoadError
  Ione.byte_buffer_class = Ione::ByteBuffer
end
