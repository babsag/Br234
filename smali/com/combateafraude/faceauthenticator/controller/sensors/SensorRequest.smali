.class public Lcom/combateafraude/faceauthenticator/controller/sensors/SensorRequest;
.super Ljava/lang/Object;
.source "SensorRequest.java"


# instance fields
.field private a:I

.field private b:[Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;


# direct methods
.method public constructor <init>(I[Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorRequest;->a:I

    .line 3
    iput-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorRequest;->b:[Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorRequest;->a:I

    return v0
.end method

.method b()[Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/sensors/SensorRequest;->b:[Lcom/combateafraude/faceauthenticator/controller/sensors/SensorValidator;

    return-object v0
.end method
