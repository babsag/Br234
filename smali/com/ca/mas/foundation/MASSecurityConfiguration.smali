.class public interface abstract Lcom/ca/mas/foundation/MASSecurityConfiguration;
.super Ljava/lang/Object;
.source "MASSecurityConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/foundation/MASSecurityConfiguration$Builder;
    }
.end annotation


# virtual methods
.method public abstract getCertificates()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHost()Landroid/net/Uri;
.end method

.method public abstract getPublicKeyHashes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isPublic()Z
.end method

.method public abstract trustPublicPki()Z
.end method
