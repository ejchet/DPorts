# Created by: Jin-Shan Tseng <tjs@cdpa.nsysu.edu.tw>
# $FreeBSD: devel/p5-Test-Dependencies/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Test-Dependencies
PORTVERSION=	0.12
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Ensure that your Makefile.PL specifies all module dependencies

BUILD_DEPENDS=	p5-rpm-build-perl>=0:${PORTSDIR}/devel/p5-rpm-build-perl \
		p5-File-Find-Rule>=0:${PORTSDIR}/devel/p5-File-Find-Rule \
		p5-IPC-Cmd>=0:${PORTSDIR}/devel/p5-IPC-Cmd \
		p5-Pod-Strip>=0:${PORTSDIR}/textproc/p5-Pod-Strip \
		p5-YAML>=0:${PORTSDIR}/textproc/p5-YAML
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Test::Dependencies.3 \
		Test::Dependencies::Heavy.3 \
		Test::Dependencies::Light.3

.include <bsd.port.mk>
