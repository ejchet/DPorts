# Created by: Jin-Shan Tseng <tjs@cdpa.nsysu.edu.tw>
# $FreeBSD: net/p5-Net-RTP/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Net-RTP
PORTVERSION=	0.09
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Send and receive RTP packets (RFC3550)

RUN_DEPENDS=	p5-IO-Socket-Multicast6>=0.02:${PORTSDIR}/net/p5-IO-Socket-Multicast6 \
		p5-IO-Socket-Multicast>=1.00:${PORTSDIR}/net/p5-IO-Socket-Multicast \
		p5-IO-Socket-INET6>=1.20:${PORTSDIR}/net/p5-IO-Socket-INET6 \
		p5-Socket6>=0.19:${PORTSDIR}/net/p5-Socket6

USES=		perl5
USE_PERL5=	modbuild

MAN1=		rtpdump.pl.1 \
		rtplosslog.pl.1 \
		rtpsend-pcmu.pl.1 \
		rtpstats.pl.1 \
		rtptimer.pl.1

MAN3=		Net::RTP.3 \
		Net::RTP::Packet.3

.include <bsd.port.mk>
