# Created by: Oliver Eikemeier
# $FreeBSD: ports/mail/swaks/Makefile,v 1.14 2012/11/17 05:59:16 svnexp Exp $

PORTNAME=	swaks
PORTVERSION=	20120320.0
CATEGORIES=	mail
MASTER_SITES=	http://jetmore.org/john/code/swaks/

MAINTAINER=	beat@FreeBSD.org
COMMENT=	Swiss Army Knife SMTP transaction tester

PLIST_FILES=	bin/${PORTNAME}

OPTIONS_DEFINE=	PERL_NET_DNS PERL_NET_SSLEAY PERL_AUTHEN_NTLM
PERL_NET_DNS_DESC=	Add MX lookup support
PERL_NET_SSLEAY_DESC=	Add TLS support
PERL_AUTHEN_NTLM_DESC=	Add support for AUTH NTLM

USE_PERL5_RUN=	yes

.include <bsd.port.pre.mk>

.if ${PORT_OPTIONS:MPERL_NET_DNS}
RUN_DEPENDS+=	p5-Net-DNS>=0:${PORTSDIR}/dns/p5-Net-DNS
.endif

.if ${PORT_OPTIONS:MPERL_NET_SSLEAY}
RUN_DEPENDS+=	p5-Net-SSLeay>=0:${PORTSDIR}/security/p5-Net-SSLeay
.endif

.if ${PORT_OPTIONS:MPERL_AUTHEN_NTLM}
RUN_DEPENDS+=	p5-Authen-NTLM>=0:${PORTSDIR}/security/p5-Authen-NTLM
.endif

do-build:
	@${SED} -e '1s|/usr/bin/perl|${PERL}|' \
		${WRKSRC}/${PORTNAME} > ${WRKSRC}/${PORTNAME}.pl

do-install:
	@${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME}.pl ${PREFIX}/bin/${PORTNAME}
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.post.mk>
