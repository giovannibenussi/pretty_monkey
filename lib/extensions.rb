module PrettyMonkey
    module StringExtensions
        def remove_consonants
            self.gsub(/[^aeiou]/, '')
        end

        def remove_consonants!
            self.replace self.remove_consonants
        end

        def remove_vocals
            self.gsub(/[aeiou]/, '')
        end

        def remove_vocals!
            self.replace self.remove_vocals
        end

        def margin(times, char = ' ')
            return self if times <= 0
            char * times + self
        end
    end

    module EnumeratorExtensions
        def with_index_by(factor)
            Enumerator.new do | y |
                i = 0
                self.each do | e |
                    y << [e, i]
                    i += factor
                end
            end
        end

        def puts_each
            self.each do | e |
                puts e
            end
        end
    end

    module ArrayExtensions
        def puts_each
            self.each do | a |
                puts a
            end
        end
        def print_each
            self.each do | a |
                print a
            end
        end
        def apply(method)
            self.each do | e |
                e.send method
            end
        end
    end
end
