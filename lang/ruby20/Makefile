# Created by: Akinori MUSHA aka knu <knu@idaemons.org>
# $FreeBSD: lang/ruby20/Makefile 321362 2013-06-20 08:41:57Z knu $

PORTNAME=	ruby
PORTVERSION=	${RUBY_PORTVERSION}
PORTREVISION=	${RUBY_PORTREVISION}
PORTEPOCH=	${RUBY_PORTEPOCH}
CATEGORIES=	lang ruby ipv6
MASTER_SITES=		${MASTER_SITE_RUBY}
MASTER_SITE_SUBDIR=	${MASTER_SITE_SUBDIR_RUBY}
DISTNAME=	${RUBY_DISTNAME}
DIST_SUBDIR=	ruby

MAINTAINER=	ruby@FreeBSD.org
COMMENT?=	An object-oriented interpreted scripting language

LIB_DEPENDS=	ffi:${PORTSDIR}/devel/libffi \
		yaml-0.2:${PORTSDIR}/textproc/libyaml \
		execinfo.1:${PORTSDIR}/devel/libexecinfo

GNU_CONFIGURE=	yes
WRKSRC=		${RUBY_WRKSRC}
CONFIGURE_ARGS=	${RUBY_CONFIGURE_ARGS} \
		--enable-shared \
		--enable-pthread \
		--with-ruby-version=minor \
		--with-sitedir="${PREFIX}/lib/ruby/site_ruby" \
		--with-vendordir="${PREFIX}/lib/ruby/vendor_ruby"
USE_OPENSSL=	yes
USE_LDCONFIG=	yes
USE_AUTOTOOLS=	autoconf

WRKSRC=		${WRKDIR}/${PORTNAME}-${RUBY_DISTVERSION}

RUBY_VER=		2.0
USE_BZIP2=		yes
USE_RUBY=		yes
RUBY_NO_BUILD_DEPENDS=	yes
RUBY_NO_RUN_DEPENDS=	yes
_RUBY_SYSLIBDIR=	${PREFIX}/lib
_RUBY_EXTDIR=		${PREFIX}/lib/ruby19

MAKE_JOBS_UNSAFE=	yes

NO_LATEST_LINK=	yes

OPTIONS_DEFINE=	RDOC DEBUG
RDOC_DESC=	Build and install Rdoc indexes
DEBUG_DESC=	Compile-in debug info

.include <bsd.port.pre.mk>

# PORTEPOCH/PORTREVISION hack

.if ${PORTEPOCH} != 0
_SUF2=	,${PORTEPOCH}
.endif

.if ${PORTREVISION} != 0
_SUF1=	_${PORTREVISION}
.endif

PKGNAMESUFFIX=	#empty
CFLAGS+=	${PTHREAD_CFLAGS}	# Keep this, else ruby will fail to load
LDFLAGS+=	${PTHREAD_LIBS}		# libraries dependent op libpthread.

#
# Disable doc generation if requested or docs disabled at all
#
.if ${PORT_OPTIONS:MRDOC} && ${PORT_OPTIONS:MDOCS}
CONFIGURE_ARGS+=	--enable-install-doc
.else
CONFIGURE_ARGS+=	--disable-install-doc
.endif

.if ${ARCH} == "powerpc"
CONFIGURE_ARGS+=	--disable-dtrace
.endif

CONFIGURE_ENV=	CFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
		LIBS="-L${LOCALBASE}/lib ${LDFLAGS}" \
		debugflags=

.if ${RUBY_VER} == ${RUBY_DEFAULT_VER}
MLINKS=		${RUBY_NAME}.1 ruby.1
PLIST_SUB+=	IF_DEFAULT=""
.else
PLIST_SUB+=	IF_DEFAULT="@comment "
.endif

INSTALLED_SCRIPTS=	irb erb rdoc ri ruby testrb

EXTSAMPLES=	bigdecimal/sample/*.rb	\
		curses/hello.rb		\
		curses/rain.rb		\
		curses/view.rb		\
		curses/view2.rb

EXTDOCS=	readline/README*		\
		ripper/README			\
		stringio/README			\
		syslog/syslog.txt

MAN1=		${RUBY_NAME}.1 erb${RUBY_SUFFIX}.1  irb${RUBY_SUFFIX}.1 \
		ri${RUBY_SUFFIX}.1

# Macros to change variables in rbconfig.rb
RB_SET_CONF_VAR=${SH} -c '${REINPLACE_CMD} -E -e "s,(CONFIG\[\"$$0\"\][[:space:]]*=[[:space:]]*)(\(?)(.*)(\)?),\1\2$$1\4," ${WRKSRC}/rbconfig.rb' --

post-patch:
	@${REINPLACE_CMD} -E \
		-e 's,-l$$pthread_lib,${PTHREAD_LIBS},g' \
		-e '/^RUBY_LIB_PATH/s,\.\$$\{TEENY\},,' \
		-e '/^RUBY_SITE_LIB_PATH2/s,\.\$$\{TEENY\},,' \
		-e '/^RUBY_VENDOR_LIB_PATH2/s,\.\$$\{TEENY\},,' \
		${WRKSRC}/configure

	#
	# Eliminate all leftovers
	#
	@${FIND} ${WRKSRC}/ -name "*.orig" -delete

#
# Remove modules we don't want
#
.for d in win32ole
	${RM} -rf ${BUILD_WRKSRC}/ext/${d}
.endfor
# We get rake from ports.
.for d in bin/rake doc/rake lib/rake test/rake man/rake.1 lib/rake.rb
	${RM} -rf ${BUILD_WRKSRC}/${d}
.endfor
# We get the gem executable from ports.
	${RM} ${BUILD_WRKSRC}/bin/gem

#
# Prepare modules we are wanting to build via external ports
#
.for d in gdbm tk
	${MV} ${BUILD_WRKSRC}/ext/${d} ${WRKDIR}/
.endfor

post-build:
#
# Hack to allow modules to be installed into separate PREFIX and/or under user
# privilegies
#
	@${RB_SET_CONF_VAR} "prefix" "ENV['PREFIX'] || \3"
	@${RB_SET_CONF_VAR} "INSTALL" "ENV['RB_USER_INSTALL'] ? '/usr/bin/install -c' : '/usr/bin/install -c ${_BINOWNGRP}'"
	@${RB_SET_CONF_VAR} "INSTALL_PROGRAM" "ENV['RB_USER_INSTALL'] ? '${INSTALL} ${COPY} ${STRIP} -m ${BINMODE}' : '${INSTALL_PROGRAM}'"
	@${RB_SET_CONF_VAR} "INSTALL_SCRIPT" "ENV['RB_USER_INSTALL'] ? '${INSTALL} ${COPY} -m ${BINMODE}' : '${INSTALL_SCRIPT}'"
	@${RB_SET_CONF_VAR} "INSTALL_DATA" "ENV['RB_USER_INSTALL'] ? '${INSTALL} ${COPY} -m ${SHAREMODE}' : '${INSTALL_DATA}'"

pre-su-install:
	${MKDIR}	${RUBY_DOCDIR}		\
			${RUBY_EXAMPLESDIR}	\
			${RUBY_RIDIR}		\
			${RUBY_SITERIDIR}	\
			${RUBY_SITEARCHLIBDIR}	\
			${RUBY_VENDORARCHLIBDIR}

	${SETENV} LC_TIME=C /bin/date > ${RUBY_RIDIR}/created.rid
	${SETENV} LC_TIME=C /bin/date > ${RUBY_SITERIDIR}/created.rid
	${TOUCH} ${RUBY_EXAMPLESDIR}/.keep_me
	${TOUCH} ${RUBY_DOCDIR}/.keep_me
	${TOUCH} ${RUBY_SITEARCHLIBDIR}/.keep_me
	${TOUCH} ${RUBY_VENDORARCHLIBDIR}/.keep_me

post-install:
#
# XXX: hack to strip ruby binary. Ruby uses its own install script that seems
# bogus to hack.
#
.if defined(STRIP) && ${STRIP} == -s
	${STRIP_CMD} ${PREFIX}/bin/${RUBY_NAME}
.endif

#
# Link just installed "ruby" to "ruby20", etc.
#
.if ${RUBY_VER} == ${RUBY_DEFAULT_VER}
. for FILE in ${INSTALLED_SCRIPTS}
	${LN} -f ${PREFIX}/bin/${FILE}${RUBY_SUFFIX} ${PREFIX}/bin/${FILE}
. endfor
.endif

.if ${PORT_OPTIONS:MDOCS}
	# Create all dirs required (":u" isn't avaiable in STABLE yet :-()
	${MKDIR} ${EXTSAMPLES:C,^([^/]+)/.*,\1,:S,^,${RUBY_EXAMPLESDIR}/,}
	${MKDIR} ${EXTDOCS:C,^([^/]+)/.*,\1,:S,^,${RUBY_DOCDIR}/,}
.for FILE in ${EXTSAMPLES}
	${INSTALL_DATA} ${WRKSRC}/ext/${FILE} \
		${RUBY_EXAMPLESDIR}/${FILE:C,^([^/]+)/.*,\1,}/
.endfor
.for FILE in ${EXTDOCS}
	${INSTALL_DATA} ${WRKSRC}/ext/${FILE} \
		${RUBY_DOCDIR}/${FILE:C,^([^/]+)/.*,\1,}/
.endfor
	@(cd ${WRKSRC}/sample/ && ${COPYTREE_SHARE} \* ${RUBY_EXAMPLESDIR}/)
	@(cd ${WRKSRC}/doc/ && ${COPYTREE_SHARE} \* ${RUBY_DOCDIR}/)
	${INSTALL_DATA} ${WRKSRC}/COPYING*	\
			${WRKSRC}/ChangeLog	\
			${WRKSRC}/LEGAL		\
			${WRKSRC}/README*	\
			${RUBY_DOCDIR}/
.endif

#
# Add generated RI files to pkg-plist
#
	@${FIND} -ds ${RUBY_RIDIR}/ ! -type d ! -name created.rid | \
		${SED} 's,^${PREFIX}/,,' >> ${TMPPLIST}
	@${FIND} -ds ${RUBY_RIDIR}/ -type d -mindepth 1 | \
		${SED} -E -e 's,^${PREFIX}/,@dirrm ,' >> ${TMPPLIST}


#
# Add generated doxygen files to pkg-plist
#
	@${ECHO_CMD} "@unexec rmdir %D/${RUBY_SITERIDIR:S,^${PREFIX}/,,} 2>/dev/null || true" >> ${TMPPLIST}
	@${ECHO_CMD} "@unexec rmdir %D/${RUBY_RIDIR:S,^${PREFIX}/,,} 2>/dev/null || true" >> ${TMPPLIST}
	@${ECHO_CMD} "@unexec rmdir %D/share/ri/${RUBY_VER} 2>/dev/null || true" >> ${TMPPLIST}
	@${ECHO_CMD} "@unexec rmdir %D/share/ri 2>/dev/null || true" >> ${TMPPLIST}
	@${ECHO_CMD} "@unexec rmdir %D/${RUBY_DOCDIR:S,^${PREFIX}/,,} 2>/dev/null || true" >> ${TMPPLIST}

	@${CAT} ${PKGMESSAGE}

plist:
	truncate -s0 pkg-plist
.for FILE in ${INSTALLED_SCRIPTS}
	@${ECHO_CMD} "bin/${FILE}%%RUBY_SUFFIX%%" >> pkg-plist
	@${ECHO_CMD} "%%IF_DEFAULT%%bin/${FILE}" >> pkg-plist
.endfor
	@${ECHO_CMD} "lib/lib%%RUBY_NAME%%-static.a" >> pkg-plist
	@${ECHO_CMD} "lib/lib%%RUBY_NAME%%.so" >> pkg-plist
	@${ECHO_CMD} "lib/lib%%RUBY_NAME%%.so.%%RUBY_SHLIBVER%%" >> pkg-plist
	@${ECHO_CMD} "libdata/pkgconfig/ruby-2.0.pc" >> pkg-plist

#
# Includes
#
	@${FIND} -ds ${PREFIX}/include/ruby-${RUBY_VER} ! -type d | \
		${SED} 's,^${PREFIX}/*,,' >> pkg-plist
	@${FIND} -ds ${PREFIX}/include/ruby-${RUBY_VER} -type d | \
		${SED} 's,^${PREFIX}/*,@dirrm ,' >> pkg-plist

#
# Vendor and site libs
#
	@${FIND} -Eds ${RUBY_DOCDIR}/ ! -type d ! -name .keep_me | \
		${SED} 's,^${RUBY_DOCDIR},%%PORTDOCS%%%%RUBY_DOCDIR%%,' \
		 >> pkg-plist
	@${FIND} -Eds ${RUBY_DOCDIR}/ -type d -mindepth 1 | ${SORT} -r | \
		${SED} -E -e \
		's,^${RUBY_DOCDIR}(.*),%%PORTDOCS%%@dirrm %%RUBY_DOCDIR%%\1,' \
		>> pkg-plist

	@${FIND} -ds ${RUBY_EXAMPLESDIR}/ ! -type d ! -name .keep_me | \
		${SED} 's,^${RUBY_EXAMPLESDIR},%%PORTDOCS%%%%RUBY_EXAMPLESDIR%%,' \
		 >> pkg-plist
	@${FIND} -ds ${RUBY_EXAMPLESDIR}/ -type d -mindepth 1 | ${SORT} -r | \
		${SED} -E -e \
		's,^${RUBY_EXAMPLESDIR}(.*),%%PORTDOCS%%@dirrm %%RUBY_EXAMPLESDIR%%\1,' \
		>> pkg-plist

	@${ECHO_CMD} "%%RUBY_DOCDIR%%/.keep_me" >> pkg-plist
#	@${ECHO_CMD} "@dirrmtry %%RUBY_DOCDIR%%" >> pkg-plist

	@${ECHO_CMD} "%%RUBY_EXAMPLESDIR%%/.keep_me" >> pkg-plist
	@${ECHO_CMD} "@dirrmtry %%RUBY_EXAMPLESDIR%%" >> pkg-plist

	@${ECHO_CMD} "@exec /bin/mkdir -p %D/%%RUBY_RIDIR%%" >> pkg-plist
	@${ECHO_CMD} "@exec env LC_TIME=C /bin/date > %D/%%RUBY_RIDIR%%/created.rid" >> pkg-plist
	@${ECHO_CMD} "@unexec /bin/rm -f %D/%%RUBY_RIDIR%%/created.rid" \
		>> pkg-plist

	@${ECHO_CMD} "@exec /bin/mkdir -p %D/%%RUBY_SITERIDIR%%" >> pkg-plist
	@${ECHO_CMD} "@exec env LC_TIME=C /bin/date > %D/%%RUBY_SITERIDIR%%/created.rid"  >> pkg-plist
	@${ECHO_CMD} "@unexec /bin/rm -f %D/%%RUBY_SITERIDIR%%/created.rid" \
		>> pkg-plist

	@${FIND} -ds ${RUBY_LIBDIR}/ ! -type d | \
		${SED} 's,^${RUBY_LIBDIR},%%RUBY_LIBDIR%%,' >> pkg-plist
	@${FIND} -ds ${RUBY_LIBDIR}/ -type d | ${SORT} -r | \
		${SED} -E -e 's,^${RUBY_LIBDIR}(.*),@dirrm %%RUBY_LIBDIR%%\1,' >> pkg-plist

#
# Find all gem files/folders
#
	@${ECHO_CMD} "%%RUBY_SITEARCHLIBDIR%%/.keep_me" >> pkg-plist
	@${ECHO_CMD} "@dirrmtry %%RUBY_SITEARCHLIBDIR%%" >> pkg-plist
	@${ECHO_CMD} "@dirrmtry %%RUBY_SITELIBDIR%%" >> pkg-plist
	@${ECHO_CMD} "@dirrmtry lib/ruby/site_ruby" >> pkg-plist

	@${ECHO_CMD} "%%RUBY_VENDORARCHLIBDIR%%/.keep_me" >> pkg-plist
	@${ECHO_CMD} "@dirrmtry %%RUBY_VENDORARCHLIBDIR%%" >> pkg-plist
	@${ECHO_CMD} "@dirrmtry %%RUBY_VENDORLIBDIR%%" >> pkg-plist
	@${ECHO_CMD} "@dirrmtry lib/ruby/vendor_ruby" >> pkg-plist

	@${ECHO_CMD} "@dirrmtry lib/ruby" >> pkg-plist

	@${SED} -i "" -E -e "s,${RUBY_ARCH},%%RUBY_ARCH%%,g" pkg-plist

test:
	@(cd ${WRKSRC}; ${MAKE} test)

validate:
	@${MKDIR} ${WRKSRC}/rubyspec
	rm -rf ${WRKSRC}/rubyspec/*
	(cd ${WRKSRC}/rubyspec && git clone git://github.com/rubyspec/rubyspec.git)
	(cd ${WRKSRC}/rubyspec && git clone git://github.com/rubyspec/mspec.git)
	(cd ${WRKSRC}/rubyspec/rubyspec && env PATH=${WRKSRC}/rubyspec/mspec/bin:${PATH} mspec -t ${PREFIX}/bin/ruby${RUBY_SUFFIX})

.include <bsd.port.post.mk>
