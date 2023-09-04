.class public Lcom/ca/mas/messaging/MASMessage;
.super Ljava/lang/Object;
.source "MASMessage.java"

# interfaces
.implements Lcom/ca/mas/messaging/MASPayload;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ca/mas/messaging/MASMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:[B

.field private d:Z

.field private e:Z

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/messaging/MASMessage$a;

    invoke-direct {v0}, Lcom/ca/mas/messaging/MASMessage$a;-><init>()V

    sput-object v0, Lcom/ca/mas/messaging/MASMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0"

    .line 2
    iput-object v0, p0, Lcom/ca/mas/messaging/MASMessage;->b:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lcom/ca/mas/messaging/MASMessage;->c:[B

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/ca/mas/messaging/MASMessage;->f:J

    const-string v0, "User"

    .line 5
    iput-object v0, p0, Lcom/ca/mas/messaging/MASMessage;->h:Ljava/lang/String;

    const-string v0, "text/plain"

    .line 6
    iput-object v0, p0, Lcom/ca/mas/messaging/MASMessage;->i:Ljava/lang/String;

    const-string v0, "BASE64"

    .line 7
    iput-object v0, p0, Lcom/ca/mas/messaging/MASMessage;->j:Ljava/lang/String;

    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/ca/mas/messaging/MASMessage;->k:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0"

    .line 10
    iput-object v0, p0, Lcom/ca/mas/messaging/MASMessage;->b:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 11
    iput-object v1, p0, Lcom/ca/mas/messaging/MASMessage;->c:[B

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lcom/ca/mas/messaging/MASMessage;->f:J

    const-string v1, "User"

    .line 13
    iput-object v1, p0, Lcom/ca/mas/messaging/MASMessage;->h:Ljava/lang/String;

    const-string v1, "text/plain"

    .line 14
    iput-object v1, p0, Lcom/ca/mas/messaging/MASMessage;->i:Ljava/lang/String;

    const-string v1, "BASE64"

    .line 15
    iput-object v1, p0, Lcom/ca/mas/messaging/MASMessage;->j:Ljava/lang/String;

    const/4 v1, 0x2

    .line 16
    iput v1, p0, Lcom/ca/mas/messaging/MASMessage;->k:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ca/mas/messaging/MASMessage;->a:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ca/mas/messaging/MASMessage;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/ca/mas/messaging/MASMessage;->c:[B

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/ca/mas/messaging/MASMessage;->d:Z

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/ca/mas/messaging/MASMessage;->e:Z

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ca/mas/messaging/MASMessage;->f:J

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/messaging/MASMessage;->g:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/messaging/MASMessage;->h:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/messaging/MASMessage;->i:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/messaging/MASMessage;->j:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ca/mas/messaging/MASMessage;->k:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/messaging/MASMessage;->l:Ljava/lang/String;

    return-void
.end method

.method public static newInstance()Lcom/ca/mas/messaging/MASMessage;
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/messaging/MASMessage;

    invoke-direct {v0}, Lcom/ca/mas/messaging/MASMessage;-><init>()V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Intent;)Lcom/ca/mas/messaging/MASMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/messaging/MASMessageException;
        }
    .end annotation

    const-string v0, "Message"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/ca/mas/messaging/MASMessage;

    return-object p0
.end method


# virtual methods
.method public createJSONStringFromMASMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/messaging/MASMessageException;
        }
    .end annotation

    .line 1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/ca/mas/messaging/MASMessage;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "1.0"

    :cond_0
    const-string v1, "Version"

    .line 4
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {p0}, Lcom/ca/mas/messaging/MASMessage;->getSenderId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SenderId"

    .line 6
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p0}, Lcom/ca/mas/messaging/MASMessage;->getSenderType()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "USER"

    :cond_1
    const-string v2, "SenderType"

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    invoke-virtual {p0}, Lcom/ca/mas/messaging/MASMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    const-string v1, "DisplayName"

    .line 12
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {p0}, Lcom/ca/mas/messaging/MASMessage;->getSentTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_3
    const-string v2, "SentTime"

    .line 15
    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 16
    invoke-virtual {p0}, Lcom/ca/mas/messaging/MASMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "text/plain"

    :cond_4
    const-string v1, "ContentType"

    .line 18
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    invoke-virtual {p0}, Lcom/ca/mas/messaging/MASMessage;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "BASE64"

    :cond_5
    const-string v1, "ContentEncoding"

    .line 21
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {p0}, Lcom/ca/mas/messaging/MASMessage;->getPayload()[B

    move-result-object v0

    if-eqz v0, :cond_7

    .line 23
    array-length v1, v0

    if-lez v1, :cond_7

    const-string v1, "Payload"

    .line 24
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    invoke-virtual {p0}, Lcom/ca/mas/messaging/MASMessage;->getTopic()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "Topic"

    .line 27
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :cond_6
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 29
    :cond_7
    :try_start_1
    new-instance p1, Lcom/ca/mas/messaging/MASMessageException;

    const-string v0, "Parameter cannot be empty or null."

    invoke-direct {p1, v0}, Lcom/ca/mas/messaging/MASMessageException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 30
    new-instance v0, Lcom/ca/mas/messaging/MASMessageException;

    invoke-direct {v0, p1}, Lcom/ca/mas/messaging/MASMessageException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createMASMessageFromJSONString(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/messaging/MASMessageException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Version"

    const-string v1, "1.0"

    .line 2
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/messaging/MASMessage;->b:Ljava/lang/String;

    const-string p1, "SenderId"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/messaging/MASMessage;->a:Ljava/lang/String;

    const-string p1, "SenderType"

    .line 4
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/messaging/MASMessage;->h:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/ca/mas/messaging/MASMessage;->h:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/messaging/MASMessage;->h:Ljava/lang/String;

    :cond_0
    const-string p1, "DisplayName"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/messaging/MASMessage;->g:Ljava/lang/String;

    const-string p1, "SentTime"

    .line 8
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ca/mas/messaging/MASMessage;->f:J

    const-string p1, "ContentType"

    .line 9
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/messaging/MASMessage;->i:Ljava/lang/String;

    const-string p1, "ContentEncoding"

    const-string v1, "utf8"

    .line 10
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/messaging/MASMessage;->j:Ljava/lang/String;

    const-string p1, "Payload"

    const-string v1, ""

    .line 11
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/messaging/MASMessage;->c:[B

    const-string p1, "Topic"

    .line 13
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/messaging/MASMessage;->l:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Lcom/ca/mas/messaging/MASMessageException;

    invoke-direct {v0, p1}, Lcom/ca/mas/messaging/MASMessageException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/messaging/MASMessage;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/messaging/MASMessage;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/messaging/MASMessage;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/messaging/MASMessage;->c:[B

    return-object v0
.end method

.method public getQos()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ca/mas/messaging/MASMessage;->k:I

    return v0
.end method

.method public getSenderId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/messaging/MASMessage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/messaging/MASMessage;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getSentTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ca/mas/messaging/MASMessage;->f:J

    return-wide v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/messaging/MASMessage;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/messaging/MASMessage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isDuplicate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/messaging/MASMessage;->d:Z

    return v0
.end method

.method public isRetained()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/messaging/MASMessage;->e:Z

    return v0
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/messaging/MASMessage;->j:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/messaging/MASMessage;->i:Ljava/lang/String;

    return-void
.end method

.method public setDuplicate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ca/mas/messaging/MASMessage;->d:Z

    return-void
.end method

.method public setPayload([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/messaging/MASMessage;->c:[B

    return-void
.end method

.method public setQos(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ca/mas/messaging/MASMessage;->k:I

    return-void
.end method

.method public setRetained(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ca/mas/messaging/MASMessage;->e:Z

    return-void
.end method

.method public setSenderId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/messaging/MASMessage;->a:Ljava/lang/String;

    return-void
.end method

.method public setSenderType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/messaging/MASMessage;->h:Ljava/lang/String;

    return-void
.end method

.method public setSentTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ca/mas/messaging/MASMessage;->f:J

    return-void
.end method

.method public setTopic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/messaging/MASMessage;->l:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/messaging/MASMessage;->b:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/ca/mas/messaging/MASMessage;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/ca/mas/messaging/MASMessage;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/ca/mas/messaging/MASMessage;->c:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4
    iget-boolean p2, p0, Lcom/ca/mas/messaging/MASMessage;->d:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 5
    iget-boolean p2, p0, Lcom/ca/mas/messaging/MASMessage;->e:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 6
    iget-wide v0, p0, Lcom/ca/mas/messaging/MASMessage;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    iget-object p2, p0, Lcom/ca/mas/messaging/MASMessage;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/ca/mas/messaging/MASMessage;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/ca/mas/messaging/MASMessage;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/ca/mas/messaging/MASMessage;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget p2, p0, Lcom/ca/mas/messaging/MASMessage;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-object p2, p0, Lcom/ca/mas/messaging/MASMessage;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
