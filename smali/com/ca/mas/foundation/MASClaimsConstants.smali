.class public final Lcom/ca/mas/foundation/MASClaimsConstants;
.super Ljava/lang/Object;
.source "MASClaimsConstants.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Strings class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
