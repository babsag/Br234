.class public Lbr/com/topaz/heartbeat/token/TokenResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private duration:I

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/token/TokenResponse;->token:Ljava/lang/String;

    iput p2, p0, Lbr/com/topaz/heartbeat/token/TokenResponse;->duration:I

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/heartbeat/token/TokenResponse;->duration:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/heartbeat/token/TokenResponse;->token:Ljava/lang/String;

    return-object v0
.end method
