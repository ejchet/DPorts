# Created by: Anton Berezin <tobez@FreeBSD.org>
# $FreeBSD: security/p5-GSSAPI/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	GSSAPI
PORTVERSION=	0.28
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	LWP/AGROLMS
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl extension providing access to the GSSAPIv2 library

USES=		perl5
USE_PERL5=	configure

MAN3=		GSSAPI.3 \
		GSSAPI::OID.3 \
		GSSAPI::OID::Set.3 \
		GSSAPI::Status.3

.include <bsd.port.pre.mk>

.if ${OSVERSION} < 800000
BROKEN=		Does not work on FreeBSD 7.x
.endif

.include <bsd.port.post.mk>
