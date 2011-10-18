Deface::Override.new(:virtual_path => "layouts/admin",
                     :name => "snippets_admin_tab",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:snippets) %>",
                     :disabled => false)