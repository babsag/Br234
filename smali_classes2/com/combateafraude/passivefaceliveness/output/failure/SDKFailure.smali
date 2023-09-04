.class public abstract Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;
.super Ljava/lang/Object;
.source "SDKFailure.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final PARAMETER_NAME:Ljava/lang/String; = "SDKFailure"


# instance fields
.field private code:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private securityErrorCode:I

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;->message:Ljava/lang/String;

    .line 8
    iput p2, p0, Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;->code:I

    .line 9
    iput p2, p0, Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;->securityErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;->message:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;->status:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;->securityErrorCode:I

    return v0
.end method
