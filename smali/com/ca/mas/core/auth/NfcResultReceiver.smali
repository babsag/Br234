.class public abstract Lcom/ca/mas/core/auth/NfcResultReceiver;
.super Lcom/ca/mas/core/MAGResultReceiver;
.source "NfcResultReceiver.java"

# interfaces
.implements Lcom/ca/mas/core/auth/AuthResultReceiver;


# instance fields
.field private a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/MAGResultReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/auth/NfcResultReceiver;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/auth/NfcResultReceiver;->a:Lorg/json/JSONObject;

    return-void
.end method
