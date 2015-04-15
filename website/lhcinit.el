;; Config LibreHealthcare
;;
;; Put this line in your emacs' config file and replace the
;; yourusername string by your user name :
;;
;; (load-file "/home/yourusername/Documents/LibreHealthcare/website/lhcinit.el")

(add-to-list 'org-publish-project-alist
	     '("librehealthcare-portal"
	       :base-directory "~/Documents/LibreHealthcare/website/portal/"
	       :base-extension "css\\|html\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
	       :publishing-directory "~/Documents/lhcwebsite/"
	       :recursive t
	       :publishing-function org-publish-attachment 
	       ))

(add-to-list 'org-publish-project-alist
	     '("librehealthcare-news"
	      :base-directory "~/Documents/LibreHealthcare/website/news/"
	      :base-extension "org"
	      :publishing-directory "~/Documents/lhcwebsite/news/"
	      :recursive t
	      :exclude "^brouillons.org\\|^~"
	      :publishing-function org-html-publish-to-html
	      :html-head-include-default-style nil
	      :html-head-include-scripts nil
	      :with-toc nil
	      :with-timestamp t
	      :auto-sitemap t
	      :sitemap-sort-files alphabetically
	      :sitemap-filename "sitemap.org"
	      :sitemap-title "Index"
	      :language fr
	      :with-author "LibreHealthcare"
	      :with-email "http://listes.medecinelibre.net/mailman/listinfo/librehealthcare"
	      :html-head-extra " 

<link rel=\"stylesheet\" type=\"text/css\" href=\"./css/style.css\" />
<link rel=\"icon\" href=\"img/prompt16librehealthcare.png\">
"
	      
	      :section-numbers nil
	      
	      :html-preamble
	      "
<div class=\"clear\"></div>
<div class=\"nav\">
<ul>
<li><a href=\"http://listes.medecinelibre.net/pipermail/librehealthcare/\">Archives</a></li>
<li><a href=\"http://listes.medecinelibre.net/mailman/listinfo/librehealthcare\">Mailing-list</a></li>
<li><a href=\"http://www.librehealthcare.org/news/index.html\">News</a></li>
<li><a href=\"http://www.librehealthcare.org/docs/index.html\">Docs</a></li>
<li><a href=\"https://github.com/LibreHealthcare/\">GitHub</a></li>
<li><a href=\"https://twitter.com/LibreHealthCare/\">Twitter</a></li>
<li><a href=\"https://framasphere.org/u/librehealthcare\">Diaspora</a></li>
</ul>
</div>
<div class=\"title\"><a href=\"index.html\">LibreHealthcare</a></div>
"
	      
	      :html-postamble 
	      "
<div class=\"topleftbutton\">
<a href=\"https://github.com/LibreHealthcare/LibreHealthcare/blob/master/COPYING.txt\"><img src=\"./img/by-sa-fdl.png\" alt=\"CC-BY-SA and GNU FDL\" title=\"CC-BY-SA and GNU FDL\" /></a>
<p><a href=\"http://listes.medecinelibre.net/mailman/listinfo/librehealthcare\">Write us</a></p>
<p><a href=\"http://www.librehealthcare.org/docs/contribute.fr.html\">Contribute</a></p>
</div>

<div class=\"toprightbutton\">
<a href=\"http://u.fsf.org/16e\"><img src=\"http://static.fsf.org/nosvn/images/badges/fsfs_icons_beige-bg.png\" alt=\"Free Software, Free Society\"></a>
</div>

<div class=\"mentions\">

<p><a href=\"http://www.auto-hebergement.fr/\">Self-hosted</a> website generated with <a href=\"http://www.gnu.org/\" >GNU/Linux</a> and <a href=\"http://httpd.apache.org/\" >Apache</a>.</p>

<p>&copy; <a href=\"mailto:nicolasfloquet59@gmail.com\" title=\"Send an email to the administrator\">LibreHealthcare</a> - <a href=\"https://github.com/LibreHealthcare/LibreHealthcare/blob/master/COPYING.txt\" >CC-BY-SA and GNU FDL</a> | Edited with <a href=\"https://fr.wikipedia.org/wiki/Gnu_Emacs\" title=\"The text editor\">%c</a>.</p>

</div>
"
	      ))
	     
(add-to-list 'org-publish-project-alist
	     '("librehealthcare-news-static"
	      :base-directory "~/Documents/LibreHealthcare/website/news/"
	      :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
	      :publishing-directory "~/Documents/lhcwebsite/news/"
	      :recursive t
	      :publishing-function org-publish-attachment 
	      ))
	     
(add-to-list 'org-publish-project-alist
	     '("librehealthcare-docs"
	      :base-directory "~/Documents/LibreHealthcare/website/docs/"
	      :base-extension "org"
	      :publishing-directory "~/Documents/lhcwebsite/docs/"
	      :recursive t
	      :exclude "^brouillons.org\\|^~"
	      :publishing-function org-html-publish-to-html
	      :html-head-include-default-style nil
	      :html-head-include-scripts nil
	      :with-toc t
	      :with-timestamp t
	      :auto-sitemap t
	      :sitemap-sort-files alphabetically
	      :sitemap-filename "sitemap.org"
	      :sitemap-title "Index"
	      :with-author "LibreHealthcare"
	      :with-email "http://listes.medecinelibre.net/mailman/listinfo/librehealthcare"
	      :html-head-extra " 

<link rel=\"stylesheet\" type=\"text/css\" href=\"./css/style.css\" />
<link rel=\"icon\" href=\"img/prompt16librehealthcare.png\">
"
	      
	      :section-numbers nil
	      
	      :html-preamble
	      "
<div class=\"clear\"></div>
<div class=\"nav\">
<ul>
<li><a href=\"http://listes.medecinelibre.net/pipermail/librehealthcare/\">Archives</a></li>
<li><a href=\"http://listes.medecinelibre.net/mailman/listinfo/librehealthcare\">Mailing-list</a></li>
<li><a href=\"http://www.librehealthcare.org/news/index.html\">News</a></li>
<li><a href=\"http://www.librehealthcare.org/docs/index.html\">Docs</a></li>
<li><a href=\"https://github.com/LibreHealthcare/\">GitHub</a></li>
<li><a href=\"https://twitter.com/LibreHealthCare/\">Twitter</a></li>
<li><a href=\"https://framasphere.org/u/librehealthcare\">Diaspora</a></li>
</ul>
</div>
<div class=\"title\"><a href=\"index.html\">LibreHealthcare</a></div>
"
	      
	      :html-postamble 
	      "
<div class=\"topleftbutton\">
<a href=\"https://github.com/LibreHealthcare/LibreHealthcare/blob/master/COPYING.txt\"><img src=\"./img/by-sa-fdl.png\" alt=\"CC-BY-SA and GNU FDL\" title=\"CC-BY-SA and GNU FDL\" /></a>
<p><a href=\"http://listes.medecinelibre.net/mailman/listinfo/librehealthcare\">Write us</a></p>
<p><a href=\"http://www.librehealthcare.org/docs/contribute.fr.html\">Contribute</a></p>
</div>

<div class=\"toprightbutton\">
<a href=\"http://u.fsf.org/16e\"><img src=\"http://static.fsf.org/nosvn/images/badges/fsfs_icons_beige-bg.png\" alt=\"Free Software, Free Society\"></a>
</div>

<div class=\"mentions\">

<p><a href=\"http://www.auto-hebergement.fr/\">Self-hosted</a> website generated with <a href=\"http://www.gnu.org/\" >GNU/Linux</a> and <a href=\"http://httpd.apache.org/\" >Apache</a>.</p>

<p>&copy; <a href=\"mailto:nicolasfloquet59@gmail.com\" title=\"Send an email to the administrator\">LibreHealthcare</a> - <a href=\"https://github.com/LibreHealthcare/LibreHealthcare/blob/master/COPYING.txt\" >CC-BY-SA and GNU-FDL</a> | Edited with <a href=\"https://fr.wikipedia.org/wiki/Gnu_Emacs\" title=\"The text editor\">%c</a>.</p>

</div>
"
	      ))
	     
(add-to-list 'org-publish-project-alist
	     '("librehealthcare-docs-static"
	      :base-directory "~/Documents/LibreHealthcare/website/docs/"
	      :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
	      :publishing-directory "~/Documents/lhcwebsite/docs/"
	      :recursive t
	      :publishing-function org-publish-attachment 
	      ))
	     	     
(add-to-list 'org-publish-project-alist
	     '("librehealthcare" :components ("librehealthcare-portal" "librehealthcare-news" "librehealthcare-news-static" "librehealthcare-docs" "librehealthcare-docs-static"
					      ))
	     )
