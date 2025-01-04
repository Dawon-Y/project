document.addEventListener('DOMContentLoaded', () => {
    const registrationForm = document.getElementById('registrationForm');
    const subjectTable = document.getElementById('subjectTable').querySelector('tbody');
    const registeredCoursesTable = document.getElementById('registeredCoursesTable').querySelector('tbody');
    const subjects = [
         { code: 'CTE0001', name: '컴퓨터프로그래밍', division: '7', sort: '전공기초', remaining: 10, credit: 3, year: 1, professor: '정인환', time: '목요일 상상관307 13:00-15:00' },
         { code: 'T027013', name: '디자인특허와 아트상품제작', division: '8', sort: '전공필수', remaining: 10, credit: 3, year: 4, professor: '하승완', time: '금요일 창의관402 13:00-16:00' },
         { code: 'V020010', name: '알고리즘', division: '7', sort: '전선', remaining: 10, credit: 3, year: 2, professor: '유상미', time: '월요일 상상관 305 10-11시' },
         { code: 'P020032', name: '무용과 음악', division: 'A', sort: '전선', remaining: 10, credit: 3, year: 2, professor: '이지혜', time: '목요일 상상관 607 12-15시' },
         { code: 'CTH0025', name: '영화로 읽는 영미문화콘텐츠', division: 'A', sort: '전공기초', remaining: 10, credit: 3, year: 1, professor: '김혜윤', time: '월요일 상상관605 10:30-12:00 / 목요일 상상관503 12:00-13:30' },
         { code: 'CTH0027', name: '한국어교육의 이해', division: 'N', sort: '전공기초', remaining: 10, credit: 3, year: 1, professor: '김윤주', time: '목요일 상상관501 18:00-19:30' },
         { code: 'CHT0023', name: '역사콘텐츠의 이해', division: 'A', sort: '전공기초', remaining: 10, credit: 3, year: 1, professor: '박준철', time: '월요일 탐구관 12:00-13:30 / 목요일 탐구관 10:30-12:00' },
         { code: 'CTH0010', name: '무용기본실기', division: 'A', sort: '전공기초', remaining: 10, credit: 3, year: 1, professor: '정유정', time: '월요일 낙산관103 12:00-13:30 / 목요일 낙산관103 10:30-12:00' },
         { code: 'V020035', name: 'SW온캠퍼스인턴십', division: '7', sort: '전공선택', remaining: 10, credit: 3, year: 4, professor: '한기준', time: '화요일 탐구관301 12:00-15:00' },
         { code: 'P020048', name: '공연예술현장의 이해와 취업', division: 'A', sort: '전공선택', remaining: 10, credit: 2, year: 4, professor: '김남용', time: '금요일 상상관601 09:00-11:00' },
         { code: 'P022001', name: '포트폴리오세미나', division: 'A', sort: '전공선택', remaining: 10, credit: 3, year: 4, professor: '이지수', time: '금요일 상상관701 15:00-18:00' },
         { code: 'V020030', name: '인공지능', division: 'A', sort: '전공선택', remaining: 10, credit: 3, year: 4, professor: '강희중', time: '수요일 공학관305 15:00-16:30' },
         { code: 'V020007', name: '객체지향언어2', division: '7', sort: '전공선택', remaining: 10, credit: 3, year: 2, professor: '황기태', time: '수요일 미래관 B104 15:00-18:00' },
         { code: 'V020008', name: '데이터통신', division: 'C', sort: '전공선택', remaining: 10, credit: 3, year: 2, professor: '김동욱', time: '화요일 공학관 305 15:00-16:00' },
         { code: 'V030007', name: '공학수학2', division: 'A', sort: '전공선택', remaining: 10, credit: 3, year: 2, professor: '이상열', time: '월요일 공학관 516 15:00-16:30' },
         { code: 'R010063', name: '기업가정신', division: 'A', sort: '전공선택', remaining: 10, credit: 3, year: 2, professor: '최희선', time: '목요일 탐구관 402 16:30-18:00' },
         { code: 'R017004', name: '부동산공법론', division: 'A', sort: '전공필수', remaining: 10, credit: 3, year: 2, professor: '민태욱', time: '수요일 상상관 507 13:30-15:00' },
         { code: 'T020004', name: '디지털 스튜디오', division: 'A', sort: '전공선택', remaining: 10, credit: 3, year: 2, professor: '김효용', time: '목요일 창의관 409 10:00-11:00' },
         { code: 'V031013', name: '신호 및 시스템', division: 'A', sort: '전공필수', remaining: 10, credit: 3, year: 2, professor: '호광춘', time: '금요일 상상관 701 13:00-15:00' },
         { code: 'T020014', name: '3D MAX', division: 'A', sort: '전공선택', remaining: 10, credit: 3, year: 2, professor: '베이진', time: '목요일 진리관 210 11:00-12:00' },
         { code: 'R010050', name: '행정과 IT활용', division: 'N', sort: '전공선택', remaining: 10, credit: 3, year: 2, professor: '정진택', time: '목요일 상상관 306 18:00-20:30' },
         { code: 'V023005', name: '가상현실', division: '8', sort: '전공선택', remaining: 10, credit: 3, year: 3, professor: '김진모', time: '월요일 공학관 201 12:00-15:00' },
         { code: 'Y020028', name: '공연·엔터테인먼트 산업의 실재', division: 'A', sort: '전공선택', remaining: 10, credit: 3, year: 3, professor: '이규린', time: '화요일 탐구관301 17:00-18:00' },
         { code: 'T012007', name: '패션CAD', division: '7', sort: '전공필수', remaining: 10, credit: 3, year: 3, professor: '박준철', time: '수요일 상상관607 12:00-15:00' },
         { code: 'T021007', name: '커뮤니케이션그래픽', division: 'B', sort: '전공필수', remaining: 10, credit: 3, year: 3, professor: '장경국', time: '화요일 창의관502 15:00-18:00' },
         { code: 'R016007', name: '리더십개발론', division: 'N', sort: '트랙필수', remaining: 10, credit: 3, year: 3, professor: '김경희', time: '화요일 탐구관102 17:00-19:00' },
         { code: 'Y030022', name: '클라우드 컴퓨팅', division: '7', sort: '전공선택', remaining: 10, credit: 3, year: 3, professor: '이관우', time: '금요일 공학관314 9:00-12:00' },
         { code: 'T026011', name: '전시디자인 스튜디오2', division: 'A', sort: '전공필수', remaining: 10, credit: 3, year: 3, professor: '이옥재', time: '화요일 창의관604 10:00-13:00' },
         { code: 'V024005', name: '웹프레임워크1', division: 'C', sort: '전공필수', remaining: 10, credit: 3, year: 3, professor: '심규현', time: '목요일 공학관309 13:30-15:00' },
         { code: 'P013011', name: '한국어 교재 연구', division: '7', sort: '전공필수', remaining: 10, credit: 3, year: 3, professor: '김윤주', time: '목요일 상상관501 16:30-18:00' },
         { code: 'V020017', name: '네트워크프로그래밍', division: 'A', sort: '전공선택', remaining: 10, credit: 3, year: 3, professor: '신성', time: '목요일 상상관304 15:00-16:30' }
     ];

    const registeredCourses = [];

    // 초기 과목 렌더링
    subjects.forEach(subject => {
        const row = document.createElement('tr');
        row.innerHTML = `
            <td>${subject.code}</td>
            <td>${subject.name}</td>
            <td>${subject.division}</td>
            <td>${subject.sort}</td>
            <td>${subject.credit}</td>
            <td>${subject.year}</td>
            <td>${subject.professor}</td>
            <td>${subject.remaining} / 10</td>
            <td><button class="register-btn" data-code="${subject.code}" data-division="${subject.division}">신청</button></td>
            <td>${subject.time}</td>
        `;
        subjectTable.appendChild(row);

        // 신청 버튼 클릭 시 수강신청 성공 또는 실패 메시지 출력
        row.querySelector('.register-btn').addEventListener('click', () => {
            if (subject.remaining > 0) {
                alert(`수강신청 완료! 과목: ${subject.name}`); // 수강신청 성공 메시지
                // 기존 로직: 잔여 인원 감소 및 등록 처리
            } else {
                alert('수강신청 실패! 잔여 좌석이 없습니다.'); // 수강신청 실패 메시지
            }
        });

        // 신청 버튼 클릭 이벤트 추가
        row.querySelector('.register-btn').addEventListener('click', () => {
            if (subject.remaining > 0) {
                // 수강신청
                subject.remaining--;
                registeredCourses.push(subject);

                // 수강신청한 과목 테이블에 추가
                const registeredRow = document.createElement('tr');
                registeredRow.innerHTML = `
                    <td>${subject.code}</td>
                    <td>${subject.name}</td>
                    <td>${subject.time}</td>
                    <td><button class="cancel-btn" data-code="${subject.code}">취소</button></td>
                `;
                registeredCoursesTable.appendChild(registeredRow);

                // 개설 과목 테이블 업데이트
                row.querySelector('td:nth-child(8)').textContent = `${subject.remaining} / 10`;

                // 취소 버튼 이벤트 추가
                registeredRow.querySelector('.cancel-btn').addEventListener('click', () => {
                    // 수강신청 취소
                    subject.remaining++;
                    registeredCourses.splice(registeredCourses.indexOf(subject), 1);

                    // 시간표에서 삭제
                    registeredRow.remove();

                    // 개설 과목 테이블 업데이트
                    row.querySelector('td:nth-child(8)').textContent = `${subject.remaining} / 10`;
                });
            }
        });
    });

    // 과목 코드와 분반으로 수강신청 처리
    registrationForm.addEventListener('submit', (e) => {
        e.preventDefault();

        const code = document.getElementById('LectureCode').value;
        const division = document.getElementById('division').value;

        const subject = subjects.find(sub => sub.code === code && sub.division === division);

        if (subject && subject.remaining > 0) {
            // 수강신청 성공
            subject.remaining--;
            registeredCourses.push(subject);

            // 수강신청한 과목 테이블에 추가
            const registeredRow = document.createElement('tr');
            registeredRow.innerHTML = `
                <td>${subject.code}</td>
                <td>${subject.name}</td>
                <td>${subject.time}</td>
                <td><button class="cancel-btn" data-code="${subject.code}">취소</button></td>
            `;
            registeredCoursesTable.appendChild(registeredRow);

            // 취소 버튼 이벤트 추가
            registeredRow.querySelector('.cancel-btn').addEventListener('click', () => {
                subject.remaining++;
                registeredCourses.splice(registeredCourses.indexOf(subject), 1);
                registeredRow.remove();
                const originalRow = [...subjectTable.children].find(row => row.querySelector('.register-btn').dataset.code === subject.code);
                originalRow.querySelector('td:nth-child(8)').textContent = `${subject.remaining} / 10`;
            });

            alert(`수강신청 완료! 과목: ${subject.name}`);
        } else {
            alert('수강신청 실패! 과목 코드 또는 분반을 확인하세요.');
        }
    });
});

