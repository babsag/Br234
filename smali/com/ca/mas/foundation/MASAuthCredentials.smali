.class public interface abstract Lcom/ca/mas/foundation/MASAuthCredentials;
.super Ljava/lang/Object;
.source "MASAuthCredentials.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final REGISTRATION_TYPE:Ljava/lang/String; = "registration_type"


# virtual methods
.method public abstract canRegisterDevice()Z
.end method

.method public abstract clear()V
.end method

.method public abstract getGrantType()Ljava/lang/String;
.end method

.method public abstract getHeaders()Ljava/util/Map;
    .annotation runtime Lcom/ca/mas/foundation/Internal;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getParams()Ljava/util/List;
    .annotation runtime Lcom/ca/mas/foundation/Internal;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getUsername()Ljava/lang/String;
.end method

.method public abstract isReusable()Z
.end method

.method public abstract isValid()Z
.end method
