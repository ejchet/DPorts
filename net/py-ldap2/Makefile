# $FreeBSD: net/py-ldap2/Makefile 322449 2013-07-07 16:21:03Z rm $

PORTNAME=	ldap2
PORTVERSION=	2.4.13
CATEGORIES=	net python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	python-ldap-${PORTVERSION}

MAINTAINER=	rm@FreeBSD.org
COMMENT=	LDAP module for python, for OpenLDAP2

LICENSE=	PSFL

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}asn1-modules>=0:${PORTSDIR}/devel/py-asn1-modules

USE_PYTHON=	-2.7
USE_PYDISTUTILS=	easy_install
USE_OPENLDAP=	yes
PYDISTUTILS_PKGNAME=	python-ldap
PYEASYINSTALL_ARCHDEP=	yes
WANT_OPENLDAP_VER=	24

REPLACE_ARGS=	-e 's,/opt/openldap-RE24/lib,${LOCALBASE}/lib,' \
		-e 's,/opt/openldap-RE24/include,${LOCALBASE}/include,' \
		-e 's,/usr/include/sasl,${LOCALBASE}/include/sasl,'

OPTIONSFILE=	${PORT_DBDIR}/py-${PORTNAME}/options
OPTIONS_DEFINE=	SASL

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MSASL}
WANT_OPENLDAP_SASL=	yes
CONFLICTS+=	openldap2[34]-client-2.*
.endif

do-configure:
	@${REINPLACE_CMD} ${REPLACE_ARGS} ${WRKSRC}/setup.cfg
.if ! ${PORT_OPTIONS:MSASL}
	@cd ${WRKSRC} && ${PYTHON_CMD} setup.py -q setopt -c _ldap -s HAVE_TLS -o defines
	@cd ${WRKSRC} && ${PYTHON_CMD} setup.py -q saveopts
.endif

.include <bsd.port.mk>
