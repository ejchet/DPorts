# Created by: Antonio Carlos Venancio Junior (<antonio@inf.ufsc.br>)
# $FreeBSD: ports/security/pear-LiveUser_Admin/Makefile,v 1.14 2012/12/17 02:18:03 svnexp Exp $

PORTNAME=	LiveUser_Admin
PORTVERSION=	0.4.0
PORTREVISION=	1
CATEGORIES=	security www pear

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	PEAR user authentication and permission management framework

BUILD_DEPENDS=	${PEARDIR}/LiveUser.php:${PORTSDIR}/security/pear-LiveUser
RUN_DEPENDS=	${PEARDIR}/LiveUser.php:${PORTSDIR}/security/pear-LiveUser

LATEST_LINK=	pear-LiveUser_Admin
OPTIONS_DEFINE=	PEAR_DB PEAR_MDB PEAR_MDB2 PEAR_LOG PEAR_XML_TREE PEAR_CRYPT_RC4

PEAR_DB_DESC=	PEAR::DB support
PEAR_MDB_DESC=	PEAR::MDB support
PEAR_MDB2_DESC=	PEAR::MDB2 support
PEAR_LOG_DESC=	PEAR::Log support
PEAR_XML_TREE_DESC=	PEAR::XML_Tree support
PEAR_CRYPT_RC4_DESC=	PEAR::Crypt_RC4 support

PEAR_AUTOINSTALL=	yes

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MPEAR_DB}
RUN_DEPENDS+=	${PEARDIR}/DB.php:${PORTSDIR}/databases/pear-DB
.endif

.if ${PORT_OPTIONS:MPEAR_MDB}
RUN_DEPENDS+=	${PEARDIR}/MDB.php:${PORTSDIR}/databases/pear-MDB
.endif

.if ${PORT_OPTIONS:MPEAR_MDB2}
RUN_DEPENDS+=	${PEARDIR}/MDB2.php:${PORTSDIR}/databases/pear-MDB2
.endif

.if ${PORT_OPTIONS:MPEAR_LOG}
RUN_DEPENDS+=	${PEARDIR}/Log.php:${PORTSDIR}/sysutils/pear-Log
.endif

.if ${PORT_OPTIONS:MPEAR_XML_TREE}
RUN_DEPENDS+=	${PEARDIR}/XML/Tree.php:${PORTSDIR}/devel/pear-XML_Tree
.endif

.if ${PORT_OPTIONS:MPEAR_CRYPT_RC4}
RUN_DEPENDS+=	${PEARDIR}/Crypt/Rc4.php:${PORTSDIR}/security/pear-Crypt_RC4
.endif

.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.mk>
