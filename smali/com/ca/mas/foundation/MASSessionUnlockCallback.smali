.class public abstract Lcom/ca/mas/foundation/MASSessionUnlockCallback;
.super Lcom/ca/mas/foundation/MASCallback;
.source "MASSessionUnlockCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ca/mas/foundation/MASCallback<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/foundation/MASCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onUserAuthenticationRequired()V
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation
.end method
