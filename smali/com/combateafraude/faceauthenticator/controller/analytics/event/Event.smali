.class public final enum Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;
.super Ljava/lang/Enum;
.source "Event.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u001b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;",
        "",
        "eventType",
        "Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;",
        "eventName",
        "",
        "eventDescription",
        "(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V",
        "getEventDescription",
        "()Ljava/lang/String;",
        "getEventName",
        "getEventType",
        "()Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;",
        "SDK_STARTED",
        "CAPTURE_REQUESTED",
        "CAPTURE_FINISHED",
        "CAPTURE_FAILED",
        "CAPTURE_INVALID",
        "SDK_FINISHED",
        "DEVICE_INFO",
        "EMULATOR_DETECTED_ON_METHOD",
        "FACE_NOT_FOUND",
        "MEMORY_INFO",
        "GOT_IMAGE_UPLOAD_LINKS",
        "SERVER_ERROR",
        "NETWORK_ERROR",
        "PROVIDER_INSTALL_FAILURE",
        "UPLOAD_IMAGE",
        "INTERCEPTOR_FAILURE",
        "SERVER_DOWN",
        "CAMERA_START_FAILED",
        "AUTHENTICATION_FAILED",
        "FaceAuthenticator_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

.field public static final enum AUTHENTICATION_FAILED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

.field public static final enum CAMERA_START_FAILED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

.field public static final enum CAPTURE_FAILED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

.field public static final enum CAPTURE_FINISHED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

.field public static final enum CAPTURE_INVALID:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

.field public static final enum CAPTURE_REQUESTED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

.field public static final enum DEVICE_INFO:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

.field public static final enum EMULATOR_DETECTED_ON_METHOD:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

.field public static final enum FACE_NOT_FOUND:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

.field public static final enum GOT_IMAGE_UPLOAD_LINKS:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

.field public static final enum INTERCEPTOR_FAILURE:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

.field public static final enum MEMORY_INFO:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

.field public static final enum NETWORK_ERROR:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

.field public static final enum PROVIDER_INSTALL_FAILURE:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

.field public static final enum SDK_FINISHED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

.field public static final enum SDK_STARTED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

.field public static final enum SERVER_DOWN:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

.field public static final enum SERVER_ERROR:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

.field public static final enum UPLOAD_IMAGE:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;


# instance fields
.field private final eventDescription:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final eventName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final eventType:Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v6, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    sget-object v7, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;->INFO:Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    const-string v1, "SDK_STARTED"

    const/4 v2, 0x0

    const-string v4, "SDK_STARTED"

    const-string v5, "SDK has started"

    move-object v0, v6

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->SDK_STARTED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    .line 2
    new-instance v6, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const-string v1, "CAPTURE_REQUESTED"

    const/4 v2, 0x1

    const-string v4, "CAPTURE_REQUESTED"

    const-string v5, "Capture has been requested"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->CAPTURE_REQUESTED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    .line 3
    new-instance v6, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const-string v1, "CAPTURE_FINISHED"

    const/4 v2, 0x2

    const-string v4, "CAPTURE_FINISHED"

    const-string v5, "Capture has been finished"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->CAPTURE_FINISHED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    .line 4
    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    sget-object v14, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;->ERROR:Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    const-string v9, "CAPTURE_FAILED"

    const/4 v10, 0x3

    const-string v12, "CAPTURE_FAILED"

    const-string v13, "Capture has failed"

    move-object v8, v0

    move-object v11, v14

    invoke-direct/range {v8 .. v13}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->CAPTURE_FAILED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    .line 5
    new-instance v6, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const-string v1, "CAPTURE_INVALID"

    const/4 v2, 0x4

    const-string v4, "CAPTURE_INVALID"

    const-string v5, "Invalid capture has been detected"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->CAPTURE_INVALID:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    .line 6
    new-instance v6, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const-string v1, "SDK_FINISHED"

    const/4 v2, 0x5

    const-string v4, "SDK_FINISHED"

    const-string v5, "SDK has finished"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->SDK_FINISHED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    .line 7
    new-instance v6, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const-string v1, "DEVICE_INFO"

    const/4 v2, 0x6

    const-string v4, "DEVICE_INFO"

    const-string v5, "Get device\'s build.prop info"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->DEVICE_INFO:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    .line 8
    new-instance v6, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const-string v1, "EMULATOR_DETECTED_ON_METHOD"

    const/4 v2, 0x7

    const-string v4, "EMULATOR_DETECTED_ON_METHOD"

    const-string v5, "Get which method the emulator was detected"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->EMULATOR_DETECTED_ON_METHOD:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    .line 9
    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const-string v2, "FACE_NOT_FOUND"

    const/16 v3, 0x8

    const-string v5, "FACE_NOT_FOUND"

    const-string v6, "Face hasn\'t been founded on system"

    move-object v1, v0

    move-object v4, v14

    invoke-direct/range {v1 .. v6}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->FACE_NOT_FOUND:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    .line 10
    new-instance v6, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const-string v1, "MEMORY_INFO"

    const/16 v2, 0x9

    const-string v4, "MEMORY_INFO"

    const-string v5, "Get device\'s memory info. Total, free and used"

    move-object v0, v6

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->MEMORY_INFO:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    .line 11
    new-instance v6, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const-string v1, "GOT_IMAGE_UPLOAD_LINKS"

    const/16 v2, 0xa

    const-string v4, "GOT_IMAGE_UPLOAD_LINKS"

    const-string v5, "SDK has the link to upload the image"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->GOT_IMAGE_UPLOAD_LINKS:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    .line 12
    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const-string v2, "SERVER_ERROR"

    const/16 v3, 0xb

    const-string v5, "SERVER_ERROR"

    const-string v6, "Error connecting to the server"

    move-object v1, v0

    move-object v4, v14

    invoke-direct/range {v1 .. v6}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->SERVER_ERROR:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    .line 13
    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const-string v2, "NETWORK_ERROR"

    const/16 v3, 0xc

    const-string v5, "NETWORK_ERROR"

    const-string v6, "Network connection error"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->NETWORK_ERROR:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    .line 14
    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    sget-object v14, Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;->WARNING:Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    const-string v9, "PROVIDER_INSTALL_FAILURE"

    const/16 v10, 0xd

    const-string v12, "PROVIDER_INSTALL_FAILURE"

    const-string v13, "Security Provider is a Google API to improve quality in the device. We test it in the SDK start, and if it fails, we close the SDK with a failure."

    move-object v8, v0

    move-object v11, v14

    invoke-direct/range {v8 .. v13}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->PROVIDER_INSTALL_FAILURE:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    .line 15
    new-instance v6, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const-string v1, "UPLOAD_IMAGE"

    const/16 v2, 0xe

    const-string v4, "UPLOAD_IMAGE"

    const-string v5, "The image-upload route was called and returned a link"

    move-object v0, v6

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->UPLOAD_IMAGE:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    .line 16
    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const-string v2, "INTERCEPTOR_FAILURE"

    const/16 v3, 0xf

    const-string v5, "INTERCEPTOR_FAILURE"

    const-string v6, "The interceptor that converts the JWT response to JSON failed"

    move-object v1, v0

    move-object v4, v14

    invoke-direct/range {v1 .. v6}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->INTERCEPTOR_FAILURE:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    .line 17
    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const-string v2, "SERVER_DOWN"

    const/16 v3, 0x10

    const-string v5, "SERVER_DOWN"

    const-string v6, "The quality verification route is down"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->SERVER_DOWN:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    .line 18
    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const-string v2, "CAMERA_START_FAILED"

    const/16 v3, 0x11

    const-string v5, "CAMERA_START_FAILED"

    const-string v6, "The SDK couldn\'t start camera. This failure can happen, and this analytics helps in troubleshooting"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->CAMERA_START_FAILED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    .line 19
    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const-string v2, "AUTHENTICATION_FAILED"

    const/16 v3, 0x12

    const-string v5, "AUTHENTICATION_FAILED"

    const-string v6, "The facematch has executed and returned false"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;-><init>(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->AUTHENTICATION_FAILED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    invoke-static {}, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->a()[Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    move-result-object v0

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->$VALUES:[Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->eventType:Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    iput-object p4, p0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->eventName:Ljava/lang/String;

    iput-object p5, p0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->eventDescription:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;
    .locals 3

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->SDK_STARTED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->CAPTURE_REQUESTED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->CAPTURE_FINISHED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->CAPTURE_FAILED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->CAPTURE_INVALID:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->SDK_FINISHED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->DEVICE_INFO:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->EMULATOR_DETECTED_ON_METHOD:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->FACE_NOT_FOUND:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->MEMORY_INFO:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->GOT_IMAGE_UPLOAD_LINKS:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->SERVER_ERROR:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->NETWORK_ERROR:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->PROVIDER_INSTALL_FAILURE:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->UPLOAD_IMAGE:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->INTERCEPTOR_FAILURE:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->SERVER_DOWN:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->CAMERA_START_FAILED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->AUTHENTICATION_FAILED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;
    .locals 1

    const-class v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    return-object p0
.end method

.method public static values()[Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;
    .locals 1

    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->$VALUES:[Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    return-object v0
.end method


# virtual methods
.method public final getEventDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->eventDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventType()Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->eventType:Lcom/combateafraude/faceauthenticator/controller/analytics/event/EventType;

    return-object v0
.end method
