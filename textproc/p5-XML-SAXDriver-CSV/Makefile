# Created by: chinsan <chinsan.tw@gmail.com>
# $FreeBSD: textproc/p5-XML-SAXDriver-CSV/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	XML-SAXDriver-CSV
PORTVERSION=	0.07
PORTREVISION=	1
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl SAX driver for converting CSV files to XML

BUILD_DEPENDS=	p5-Text-CSV_XS>=0.22:${PORTSDIR}/textproc/p5-Text-CSV_XS \
		p5-XML-Handler-YAWriter>=0:${PORTSDIR}/textproc/p5-XML-Handler-YAWriter \
		p5-XML-SAX>=0.14:${PORTSDIR}/textproc/p5-XML-SAX
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure
USE_DOS2UNIX=	yes

MAN3=		XML::SAXDriver::CSV.3

.include <bsd.port.mk>
