# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD: www/p5-AMF-Perl/Makefile 324007 2013-07-31 06:54:09Z az $

PORTNAME=	AMF-Perl
PORTVERSION=	0.15
PORTREVISION=	2
CATEGORIES=	www devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:SIMONF
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Flash Remoting in Perl

RUN_DEPENDS=	p5-Exception-Class>=0:${PORTSDIR}/devel/p5-Exception-Class \
		p5-DBI>=0:${PORTSDIR}/databases/p5-DBI

USES=		perl5
USE_PERL5=	configure patch

NO_MANCOMPRESS=	no
MAN3=		AMF::Perl.3 AMF::Perl::App::Executive.3 \
		AMF::Perl::IO::Deserializer.3 AMF::Perl::IO::InputStream.3 \
		AMF::Perl::IO::OutputStream.3 AMF::Perl::IO::Serializer.3 \
		AMF::Perl::Sql::MysqlRecordSet.3 AMF::Perl::Util::Object.3 \
		AMF::Perl::Util::RemotingService.3

post-patch:
	@${PERL} -pi -e 's/=(?==head)//g' ${WRKSRC}/lib/AMF/Perl.pm

post-configure:
# dirty hack to deceive irritable pod2man
	@${PERL} -pi -e 's/^(POD2MAN_EXE.*)$$/\1 --lax/;' ${WRKSRC}/Makefile

.include <bsd.port.mk>
