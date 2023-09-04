.class public interface abstract Lcom/ca/mas/core/cert/TrustedCertificateConfiguration;
.super Ljava/lang/Object;
.source "TrustedCertificateConfiguration.java"


# virtual methods
.method public abstract getTrustedCertificateAnchors()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTrustedCertificatePinnedPublicKeyHashes()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/ca/mas/core/cert/PublicKeyHash;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAlsoTrustPublicPki()Z
.end method
