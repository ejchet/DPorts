# Created by: Autrijus Tang <autrijus@autrijus.org>
# $FreeBSD: mail/sympa/Makefile 319862 2013-06-04 14:17:16Z bapt $

PORTNAME=	sympa
PORTVERSION=	6.1.17
PORTREVISION=	1
CATEGORIES=	mail
MASTER_SITES=	http://www.sympa.org/distribution/ \
		http://www.sympa.org/distribution/old/

MAINTAINER=	crees@FreeBSD.org
COMMENT=	Sympa is an electronic mailing list manager

LICENSE=	GPLv2

BUILD_DEPENDS:=	${RUN_DEPENDS}
RUN_DEPENDS+=	\
	p5-Archive-Zip>=0:${PORTSDIR}/archivers/p5-Archive-Zip \
	p5-DBI>=0:${PORTSDIR}/databases/p5-DBI	\
	p5-File-Copy-Recursive>=0:${PORTSDIR}/devel/p5-File-Copy-Recursive \
	p5-IO-stringy>=0:${PORTSDIR}/devel/p5-IO-stringy	\
	p5-Locale-libintl>=0:${PORTSDIR}/devel/p5-Locale-libintl \
	p5-Term-ProgressBar>=0:${PORTSDIR}/devel/p5-Term-ProgressBar \
	p5-MIME-EncWords>=0:${PORTSDIR}/mail/p5-MIME-EncWords	\
	p5-MIME-Tools>=0:${PORTSDIR}/mail/p5-MIME-Tools	\
	p5-Mail-Tools>=0:${PORTSDIR}/mail/p5-Mail-Tools	\
	p5-Msgcat>=0:${PORTSDIR}/misc/p5-Locale-Msgcat \
	p5-perl-ldap>=0:${PORTSDIR}/net/p5-perl-ldap		\
	p5-Net-Netmask>=0:${PORTSDIR}/net-mgmt/p5-Net-Netmask	\
	p5-IO-Socket-SSL>=0:${PORTSDIR}/security/p5-IO-Socket-SSL \
	p5-Crypt-CipherSaber>=0:${PORTSDIR}/security/p5-Crypt-CipherSaber \
	p5-HTML-Format>=0:${PORTSDIR}/textproc/p5-HTML-Format	\
	p5-Unicode-LineBreak>=0:${PORTSDIR}/textproc/p5-Unicode-LineBreak \
	p5-XML-LibXML>=0:${PORTSDIR}/textproc/p5-XML-LibXML \
	p5-HTML-StripScripts-Parser>=0:${PORTSDIR}/www/p5-HTML-StripScripts-Parser \
	p5-HTML-Tree>=0:${PORTSDIR}/www/p5-HTML-Tree		\
	p5-Template-Toolkit>=0:${PORTSDIR}/www/p5-Template-Toolkit	\
	p5-MIME-Lite-HTML>=0:${PORTSDIR}/mail/p5-MIME-Lite-HTML

# Ignore alpha/beta versions
PORTSCOUT=	limit:^[0-9]+(\.[0-9]+)*$$

USERS=		sympa
GROUPS=		sympa
GNU_CONFIGURE=	yes
USE_PERL5=	yes
ICONSDIR?=	www/icons
CONFIGURE_ARGS+=--bindir=${PREFIX}/libexec/${PORTNAME}	\
		--libexecdir=${PREFIX}/libexec/${PORTNAME} \
		--localedir=${PREFIX}/share/locale	\
		--sbindir=${PREFIX}/libexec/${PORTNAME}	\
		--sysconfdir=${ETCDIR}			\
		--with-confdir=${PREFIX}/etc		\
		--with-docdir=${EXAMPLESDIR}		\
		--with-expldir=${DATADIR}/list_data	\
		--with-initdir=${PREFIX}/etc/rc.d	\
		--with-lockdir=/var/spool/lock		\
		--with-modulesdir=${PREFIX}/libexec/${PORTNAME} \
		--with-piddir=/var/run/${PORTNAME} \
		--with-scriptdir=${PREFIX}/libexec/${PORTNAME} \
		--with-spooldir=/var/spool/${PORTNAME}
CONFIGURE_ENV+=	lt_cv_sys_max_cmd_len=${CONFIGURE_MAX_CMD_LEN}
MAKE_ENV?=	PERL_EXTUTILS_AUTOINSTALL=--skip
SUB_FILES=	pkg-install

USE_RC_SUBR=	sympa

MAN8=		alias_manager.8 archived.8 bounced.8 sympa.8

CONFLICTS=	sympa-5*

OPTIONS_DEFINE=	FASTCGI APACHE
OPTIONS_DEFAULT=APACHE
OPTIONS_RADIO=	DATABASE
OPTIONS_RADIO_DATABASE=	ORACLE PGSQL SYBASE MYSQL

SYBASE_DESC=	Sybase database

.ifdef DB_TYPE
DB_TYPE:=	${DB_TYPE:tu}
.  for option in ${OPTIONS_RADIO_DATABASE}
.    if ${DB_TYPE} == ${option:S,PGSQL,PG,}
OPTIONS_SET+=	${option}
.warning You need to replace your DB_TYPE variable in make.conf with OPTIONS_SET+=${option}
.    endif
.  endfor
.endif

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USES+=		gettext
PLIST_SUB+=	NLS=""
.else
CONFIGURE_ARGS+=--disable-nls
PLIST_SUB+=	NLS="@comment "
.endif

.if ${PORT_OPTIONS:MFASTCGI}
RUN_DEPENDS+=	p5-FCGI>=0:${PORTSDIR}/www/p5-FCGI
. if ${PORT_OPTIONS:MAPACHE}
USE_APACHE_RUN=	22+
RUN_DEPENDS+=	${LOCALBASE}/${APACHEMODDIR}/mod_fastcgi.so:${PORTSDIR}/www/mod_fastcgi
. endif
.endif

.if ${PORT_OPTIONS:MORACLE}
RUN_DEPENDS+=	p5-DBD-Oracle>=0:${PORTSDIR}/databases/p5-DBD-Oracle
.elif ${PORT_OPTIONS:MPGSQL}
SUB_LIST+=	REQ_MYSQL="" REQ_PGSQL=postgresql
RUN_DEPENDS+=	p5-DBD-Pg>=0:${PORTSDIR}/databases/p5-DBD-Pg
.elif ${PORT_OPTIONS:MSYBASE}
RUN_DEPENDS+=	p5-DBD-Sybase>=0:${PORTSDIR}/databases/p5-DBD-Sybase
.elif ${PORT_OPTIONS:MMYSQL}
SUB_LIST+=	REQ_MYSQL=mysql REQ_PGSQL=""
RUN_DEPENDS+=	p5-DBD-mysql>=0:${PORTSDIR}/databases/p5-DBD-mysql
.endif

pre-install:
	@PKG_PREFIX=${PREFIX} ${SH} ${PKGINSTALL} ${PKGNAME} PRE-INSTALL

post-patch:
	@${REINPLACE_CMD} -e 's|^\( *staticdir=\).*$$|\1${DATADIR}|'	\
	    -e 's|^\( *defaultdir=\).*$$|\1${EXAMPLESDIR}|'		\
	    -e 's|^\( *arcdir=\).*$$|\1${DATADIR}/arc|'			\
	    -e 's|^\( *bouncedir=\).*$$|\1${DATADIR}/bounce|'		\
	    -e 's|^\( *execcgidir=\).*$$|\1${PREFIX}/libexec/${PORTNAME}|' \
		${WRKSRC}/configure
	@${REINPLACE_CMD} -e 's|\(--target.*sympa.conf\)|\1.sample|'	\
		${WRKSRC}/Makefile.in
	@${REINPLACE_CMD} -e 's/\$$(DESTDIR)\$$(sampledir)/\$$(sampledir)/g' \
		${WRKSRC}/doc/sample/Makefile.in

post-install:
	@PKG_PREFIX=${PREFIX} DB_TYPE=${DB_TYPE} WITH_FASTCGI=${WITH_FASTCGI} \
		${SH} ${PKGINSTALL} ${PKGNAME} POST-INSTALL

.include <bsd.port.mk>
