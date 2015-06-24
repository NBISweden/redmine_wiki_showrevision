module WikiExtensionsWikiMacro
  Redmine::WikiFormatting::Macros.register do
  desc "Display revision number and last edit of current page."
    macro :show_revision do |obj, args|
      h("Revision: " + obj.version.to_s + " (Edited: " + obj.updated_on.to_s + " by ") + link_to_user(obj.author) + ")"
      end
  end
end

