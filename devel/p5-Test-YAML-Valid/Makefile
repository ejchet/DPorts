# Created by: Lars Thegler <lth@FreeBSD.org>
# $FreeBSD: devel/p5-Test-YAML-Valid/Makefile 324352 2013-08-07 13:20:32Z az $

PORTNAME=	Test-YAML-Valid
PORTVERSION=	0.04
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	Test for valid YAML

RUN_DEPENDS=	p5-YAML>=0.60:${PORTSDIR}/textproc/p5-YAML
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Test::YAML::Valid.3

OPTIONS_DEFINE=	YAMLSYCK
YAMLSYCK_DESC=	Use YAML::Syck for testing

post-patch:
	@${REINPLACE_CMD} -i '' -e '/auto_install.*/d' \
		${WRKSRC}/Makefile.PL

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MYAMLSYCK}
RUN_DEPENDS+=	p5-YAML-Syck>0:${PORTSDIR}/textproc/p5-YAML-Syck
BUILD_DEPENDS+=	p5-YAML-Syck>0:${PORTSDIR}/textproc/p5-YAML-Syck
.endif

.include <bsd.port.mk>
