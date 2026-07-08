- kubernetes: 조타수(그리스어)

**k8s 커뮤니티**

* **활성화된 커뮤니티** - 깃허브, 페이스북
* `https://github.com/kubernetes/kubernetes/issues`
* `http://slack.k8s.io/`
* `https://www.facebook.com/groups/k8skr`


# 02-1 쿠버네티스 설치 / 설치없이 웹에서 실습하기
- Killercoda: https://killercoda.com/playgrounds
- Play with Kubernetes Classroom: https://training.play-with-kubernetes.com/


# 02-2 PC에 설치하기
## utility
1. 필수
  - kubeadm
  - kubelet
  - kubectl
2. 추가
   - kubespray
  
- CNI(Container Network Interface)
  - Container간 통신을 지원하는 VxLan
  - 다양한 종료의 플러그인이 존재
- 실습
  - control plane(master node) 설치
    - kubeadm init: master control plane 에서만 실행한다.
  - worker node

## mac os 에서 k8s 실행
- 기존 colima 종료 (실행 중인 경우)
    colima stop
- 쿠버네티스를 활성화하여 시작 (CPU 2코어, 메모리 4GB 추천)
    colima start --cpu 2 --memory 4 --kubernetes