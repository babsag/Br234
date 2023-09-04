.class public abstract Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;
.super Ljava/lang/Object;
.source "SDKFailure.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final PARAMETER_NAME:Ljava/lang/String; = "SDKFailure"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;->a:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;->b:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;->b:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;->a:Ljava/lang/String;

    return-object v0
.end method
