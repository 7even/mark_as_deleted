require 'spec_helper'

class Person
  extend MarkAsDeleted::ActiveRecord
end

describe MarkAsDeleted::ActiveRecord do
  describe ".mark_as_deleted" do
    context "without a parameter" do
      before(:each) do
        class Person
          mark_as_deleted
        end
        @person = Person.new
      end
      
      it "(re)defines a #destroy method that updates :deleted column to true" do
        @person.should_receive(:update_attributes).with(:deleted => true)
        @person.destroy
      end
    end
    
    context "with a parameter" do
      before(:each) do
        class Person
          mark_as_deleted :is_deleted
        end
        @person = Person.new
      end
      
      it "(re)defines a #destroy method that updates mark_as_deleted parameter column to true" do
        @person.should_receive(:update_attributes).with(:is_deleted => true)
        @person.destroy
      end
    end
  end
end
