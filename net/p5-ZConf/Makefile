# Created by: Zane C, Bowers <vvelox@vvelox.net>
# $FreeBSD: net/p5-ZConf/Makefile 319500 2013-05-31 14:44:50Z miwi $

PORTNAME=	ZConf
PORTVERSION=	6.1.0
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:VVELOX
PKGNAMEPREFIX=	p5-

MAINTAINER=	vvelox@vvelox.net
COMMENT=	A configuration system allowing for either file or LDAP backed storage

BUILD_DEPENDS=	p5-Chooser>=0:${PORTSDIR}/devel/p5-Chooser \
		p5-Error-Helper>=0:${PORTSDIR}/devel/p5-Error-Helper \
		p5-File-BaseDir>=0:${PORTSDIR}/devel/p5-File-BaseDir \
		p5-Module-List>=0:${PORTSDIR}/devel/p5-Module-List \
		p5-Net-LDAP-AutoDNs>=0:${PORTSDIR}/net/p5-Net-LDAP-AutoDNs \
		p5-Net-LDAP-AutoServer>=0:${PORTSDIR}/net/p5-Net-LDAP-AutoServer \
		p5-Net-LDAP-LDAPhash>=0:${PORTSDIR}/net/p5-Net-LDAP-LDAPhash \
		p5-Net-LDAP-Makepath>=0:${PORTSDIR}/net/p5-Net-LDAP-Makepath \
		p5-ZML>=0:${PORTSDIR}/devel/p5-ZML \
		p5-perl-ldap>=0:${PORTSDIR}/net/p5-perl-ldap
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		ZConf.3 \
		ZConf::backends::file.3 \
		ZConf::backends::ldap.3

.include <bsd.port.mk>
