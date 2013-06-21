# Autogenerated from a Treetop grammar. Edits may be lost.


module EzRipperStatement
  include Treetop::Runtime

  def root
    @root ||= :statement
  end

  def _nt_statement
    start_index = index
    if node_cache[:statement].has_key?(index)
      cached = node_cache[:statement][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    r1 = _nt_comment
    if r1
      r0 = r1
    else
      r2 = _nt_delete_statement
      if r2
        r0 = r2
      else
        r3 = _nt_replace_statement
        if r3
          r0 = r3
        else
          r4 = _nt_print_statement
          if r4
            r0 = r4
          else
            @index = i0
            r0 = nil
          end
        end
      end
    end

    node_cache[:statement][start_index] = r0

    r0
  end

  module Comment0
  end

  def _nt_comment
    start_index = index
    if node_cache[:comment].has_key?(index)
      cached = node_cache[:comment][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if has_terminal?("#", false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      terminal_parse_failure("#")
      r1 = nil
    end
    s0 << r1
    if r1
      s2, i2 = [], index
      loop do
        if index < input_length
          r3 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure("any character")
          r3 = nil
        end
        if r3
          s2 << r3
        else
          break
        end
      end
      r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
      s0 << r2
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Comment0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:comment][start_index] = r0

    r0
  end

  module DeleteStatement0
    def sp1
      elements[1]
    end

    def quoted_argument
      elements[2]
    end

    def sp2
      elements[3]
    end
  end

  def _nt_delete_statement
    start_index = index
    if node_cache[:delete_statement].has_key?(index)
      cached = node_cache[:delete_statement][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if has_terminal?("delete", false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 6))
      @index += 6
    else
      terminal_parse_failure("delete")
      r1 = nil
    end
    s0 << r1
    if r1
      r2 = _nt_sp
      s0 << r2
      if r2
        r3 = _nt_quoted_argument
        s0 << r3
        if r3
          r4 = _nt_sp
          s0 << r4
        end
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(DeleteStatement0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:delete_statement][start_index] = r0

    r0
  end

  module ReplaceStatement0
    def sp1
      elements[1]
    end

    def quoted_argument1
      elements[2]
    end

    def sp2
      elements[3]
    end

    def quoted_argument2
      elements[4]
    end

    def sp3
      elements[5]
    end
  end

  def _nt_replace_statement
    start_index = index
    if node_cache[:replace_statement].has_key?(index)
      cached = node_cache[:replace_statement][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if has_terminal?("replace", false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 7))
      @index += 7
    else
      terminal_parse_failure("replace")
      r1 = nil
    end
    s0 << r1
    if r1
      r2 = _nt_sp
      s0 << r2
      if r2
        r3 = _nt_quoted_argument
        s0 << r3
        if r3
          r4 = _nt_sp
          s0 << r4
          if r4
            r5 = _nt_quoted_argument
            s0 << r5
            if r5
              r6 = _nt_sp
              s0 << r6
            end
          end
        end
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(ReplaceStatement0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:replace_statement][start_index] = r0

    r0
  end

  module PrintStatement0
    def sp1
      elements[1]
    end

    def quoted_argument
      elements[2]
    end

    def sp2
      elements[3]
    end
  end

  def _nt_print_statement
    start_index = index
    if node_cache[:print_statement].has_key?(index)
      cached = node_cache[:print_statement][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if has_terminal?("filter", false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 6))
      @index += 6
    else
      terminal_parse_failure("filter")
      r1 = nil
    end
    s0 << r1
    if r1
      r2 = _nt_sp
      s0 << r2
      if r2
        r3 = _nt_quoted_argument
        s0 << r3
        if r3
          r4 = _nt_sp
          s0 << r4
        end
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(PrintStatement0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:print_statement][start_index] = r0

    r0
  end

  module QuotedArgument0
    def argument
      elements[1]
    end

  end

  def _nt_quoted_argument
    start_index = index
    if node_cache[:quoted_argument].has_key?(index)
      cached = node_cache[:quoted_argument][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if has_terminal?("'", false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      terminal_parse_failure("'")
      r1 = nil
    end
    s0 << r1
    if r1
      r2 = _nt_argument
      s0 << r2
      if r2
        if has_terminal?("'", false, index)
          r3 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure("'")
          r3 = nil
        end
        s0 << r3
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(QuotedArgument0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:quoted_argument][start_index] = r0

    r0
  end

  module Argument0
  end

  def _nt_argument
    start_index = index
    if node_cache[:argument].has_key?(index)
      cached = node_cache[:argument][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      i1, s1 = index, []
      i2 = index
      if has_terminal?("'", false, index)
        r3 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure("'")
        r3 = nil
      end
      if r3
        r2 = nil
      else
        @index = i2
        r2 = instantiate_node(SyntaxNode,input, index...index)
      end
      s1 << r2
      if r2
        if index < input_length
          r4 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure("any character")
          r4 = nil
        end
        s1 << r4
      end
      if s1.last
        r1 = instantiate_node(SyntaxNode,input, i1...index, s1)
        r1.extend(Argument0)
      else
        @index = i1
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    r0 = instantiate_node(SyntaxNode,input, i0...index, s0)

    node_cache[:argument][start_index] = r0

    r0
  end

  def _nt_sp
    start_index = index
    if node_cache[:sp].has_key?(index)
      cached = node_cache[:sp][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    s0, i0 = [], index
    loop do
      if has_terminal?('\G[ \\t\\n]', true, index)
        r1 = true
        @index += 1
      else
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    r0 = instantiate_node(SyntaxNode,input, i0...index, s0)

    node_cache[:sp][start_index] = r0

    r0
  end

end

class EzRipperStatementParser < Treetop::Runtime::CompiledParser
  include EzRipperStatement
end
 